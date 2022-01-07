
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_ep {struct usb_endpoint_descriptor const* desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; scalar_t__ bInterval; int wMaxPacketSize; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor const* desc; } ;
struct cdns3_endpoint {int flags; scalar_t__ type; int num; int dir; int pcs; int ccs; scalar_t__ num_trbs; scalar_t__ free_trbs; scalar_t__ dequeue; scalar_t__ enqueue; scalar_t__ wa1_set; int interval; TYPE_1__ endpoint; int name; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ dev_ver; int lock; TYPE_2__* regs; int dev; } ;
struct TYPE_4__ {int ep_sts; int ep_cfg; int ep_sts_en; int ep_ien; int ep_cmd; } ;


 int BIT (scalar_t__) ;
 scalar_t__ DEV_VER_V2 ;
 int EINVAL ;
 int EP_CFG_ENABLE ;
 int EP_CMD_CSTALL ;
 int EP_CMD_EPRST ;
 int EP_ENABLED ;
 int EP_PENDING_REQUEST ;
 int EP_QUIRK_EXTRA_BUF_EN ;
 int EP_QUIRK_ISO_OUT_EN ;
 int EP_STALLED ;
 int EP_STALL_PENDING ;
 int EP_STS_CCS (int) ;
 int EP_STS_EN_TRBERREN ;
 int EP_UPDATE_EP_TRBADDR ;
 int ISO_MAX_INTERVAL ;
 scalar_t__ USB_DT_ENDPOINT ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int cdns3_allocate_trb_pool (struct cdns3_endpoint*) ;
 scalar_t__ cdns3_ep_addr_to_index (int) ;
 int cdns3_free_trb_pool (struct cdns3_endpoint*) ;
 int cdns3_select_ep (struct cdns3_device*,int) ;
 int cdns3_set_register_bit (int *,int ) ;
 int cdns3_wa2_enable_detection (struct cdns3_device*,struct cdns3_endpoint*,int) ;
 scalar_t__ dev_WARN_ONCE (int ,int,char*,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 struct cdns3_endpoint* ep_to_cdns3_ep (struct usb_ep*) ;
 int readl (int *) ;
 int readl_poll_timeout_atomic (int *,int,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_cdns3_gadget_ep_enable (struct cdns3_endpoint*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usb_endpoint_type (struct usb_endpoint_descriptor const*) ;
 int writel (int,int *) ;

__attribute__((used)) static int cdns3_gadget_ep_enable(struct usb_ep *ep,
      const struct usb_endpoint_descriptor *desc)
{
 struct cdns3_endpoint *priv_ep;
 struct cdns3_device *priv_dev;
 u32 reg = EP_STS_EN_TRBERREN;
 u32 bEndpointAddress;
 unsigned long flags;
 int enable = 1;
 int ret;
 int val;

 priv_ep = ep_to_cdns3_ep(ep);
 priv_dev = priv_ep->cdns3_dev;

 if (!ep || !desc || desc->bDescriptorType != USB_DT_ENDPOINT) {
  dev_dbg(priv_dev->dev, "usbss: invalid parameters\n");
  return -EINVAL;
 }

 if (!desc->wMaxPacketSize) {
  dev_err(priv_dev->dev, "usbss: missing wMaxPacketSize\n");
  return -EINVAL;
 }

 if (dev_WARN_ONCE(priv_dev->dev, priv_ep->flags & EP_ENABLED,
     "%s is already enabled\n", priv_ep->name))
  return 0;

 spin_lock_irqsave(&priv_dev->lock, flags);

 priv_ep->endpoint.desc = desc;
 priv_ep->type = usb_endpoint_type(desc);
 priv_ep->interval = desc->bInterval ? BIT(desc->bInterval - 1) : 0;

 if (priv_ep->interval > ISO_MAX_INTERVAL &&
     priv_ep->type == USB_ENDPOINT_XFER_ISOC) {
  dev_err(priv_dev->dev, "Driver is limited to %d period\n",
   ISO_MAX_INTERVAL);

  ret = -EINVAL;
  goto exit;
 }

 ret = cdns3_allocate_trb_pool(priv_ep);

 if (ret)
  goto exit;

 bEndpointAddress = priv_ep->num | priv_ep->dir;
 cdns3_select_ep(priv_dev, bEndpointAddress);

 trace_cdns3_gadget_ep_enable(priv_ep);

 writel(EP_CMD_EPRST, &priv_dev->regs->ep_cmd);

 ret = readl_poll_timeout_atomic(&priv_dev->regs->ep_cmd, val,
     !(val & (EP_CMD_CSTALL | EP_CMD_EPRST)),
     1, 1000);

 if (unlikely(ret)) {
  cdns3_free_trb_pool(priv_ep);
  ret = -EINVAL;
  goto exit;
 }


 cdns3_set_register_bit(&priv_dev->regs->ep_ien,
          BIT(cdns3_ep_addr_to_index(bEndpointAddress)));

 if (priv_dev->dev_ver < DEV_VER_V2)
  cdns3_wa2_enable_detection(priv_dev, priv_ep, reg);

 writel(reg, &priv_dev->regs->ep_sts_en);
 if (priv_ep->type == USB_ENDPOINT_XFER_ISOC && !priv_ep->dir)
  enable = 0;

 if (enable)
  cdns3_set_register_bit(&priv_dev->regs->ep_cfg, EP_CFG_ENABLE);

 ep->desc = desc;
 priv_ep->flags &= ~(EP_PENDING_REQUEST | EP_STALLED | EP_STALL_PENDING |
       EP_QUIRK_ISO_OUT_EN | EP_QUIRK_EXTRA_BUF_EN);
 priv_ep->flags |= EP_ENABLED | EP_UPDATE_EP_TRBADDR;
 priv_ep->wa1_set = 0;
 priv_ep->enqueue = 0;
 priv_ep->dequeue = 0;
 reg = readl(&priv_dev->regs->ep_sts);
 priv_ep->pcs = !!EP_STS_CCS(reg);
 priv_ep->ccs = !!EP_STS_CCS(reg);

 priv_ep->free_trbs = priv_ep->num_trbs - 1;
exit:
 spin_unlock_irqrestore(&priv_dev->lock, flags);

 return ret;
}
