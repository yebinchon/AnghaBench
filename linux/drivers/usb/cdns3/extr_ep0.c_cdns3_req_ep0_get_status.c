
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct usb_ctrlrequest {int bRequestType; int wIndex; } ;
struct cdns3_endpoint {int flags; } ;
struct TYPE_3__ {int speed; } ;
struct cdns3_device {int setup_dma; scalar_t__ setup_buf; TYPE_2__* regs; struct cdns3_endpoint** eps; int u2_allowed; int u1_allowed; TYPE_1__ gadget; int wake_up_flag; int is_selfpowered; } ;
typedef int __le16 ;
struct TYPE_4__ {int ep_sts; } ;


 int BIT (int ) ;
 int EINVAL ;
 int EP_STALL_PENDING ;
 int EP_STS_STALL (int ) ;
 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_DEVICE_SELF_POWERED ;
 int USB_DEV_STAT_U1_ENABLED ;
 int USB_DEV_STAT_U2_ENABLED ;
 int USB_ENDPOINT_HALT ;



 int USB_RECIP_MASK ;
 int USB_SPEED_SUPER ;
 int cdns3_ep0_delegate_req (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_ep0_run_transfer (struct cdns3_device*,int ,int,int,int ) ;
 size_t cdns3_ep_addr_to_index (int ) ;
 int cdns3_select_ep (struct cdns3_device*,int ) ;
 int cpu_to_le16 (int ) ;
 int readl (int *) ;

__attribute__((used)) static int cdns3_req_ep0_get_status(struct cdns3_device *priv_dev,
        struct usb_ctrlrequest *ctrl)
{
 struct cdns3_endpoint *priv_ep;
 __le16 *response_pkt;
 u16 usb_status = 0;
 u32 recip;
 u8 index;

 recip = ctrl->bRequestType & USB_RECIP_MASK;

 switch (recip) {
 case 130:

  if (priv_dev->is_selfpowered)
   usb_status = BIT(USB_DEVICE_SELF_POWERED);

  if (priv_dev->wake_up_flag)
   usb_status |= BIT(USB_DEVICE_REMOTE_WAKEUP);

  if (priv_dev->gadget.speed != USB_SPEED_SUPER)
   break;

  if (priv_dev->u1_allowed)
   usb_status |= BIT(USB_DEV_STAT_U1_ENABLED);

  if (priv_dev->u2_allowed)
   usb_status |= BIT(USB_DEV_STAT_U2_ENABLED);

  break;
 case 128:
  return cdns3_ep0_delegate_req(priv_dev, ctrl);
 case 129:
  index = cdns3_ep_addr_to_index(ctrl->wIndex);
  priv_ep = priv_dev->eps[index];


  cdns3_select_ep(priv_dev, ctrl->wIndex);
  if (EP_STS_STALL(readl(&priv_dev->regs->ep_sts)) ||
      (priv_ep->flags & EP_STALL_PENDING))
   usb_status = BIT(USB_ENDPOINT_HALT);
  break;
 default:
  return -EINVAL;
 }

 response_pkt = (__le16 *)priv_dev->setup_buf;
 *response_pkt = cpu_to_le16(usb_status);

 cdns3_ep0_run_transfer(priv_dev, priv_dev->setup_dma,
          sizeof(*response_pkt), 1, 0);
 return 0;
}
