
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int length; } ;
struct bdc_req {TYPE_2__ usb_req; TYPE_1__* ep; } ;
struct TYPE_10__ {int bRequestType; int wLength; int wValue; } ;
struct TYPE_9__ {TYPE_3__* ep0; } ;
struct bdc {int ep0_state; int zlp_needed; int dev; TYPE_5__ setup_pkt; TYPE_4__ gadget; } ;
struct TYPE_8__ {int maxpacket; } ;
struct TYPE_6__ {scalar_t__ dir; } ;


 int BD_DIR_IN ;
 int BD_TYPE_DS ;
 int BD_TYPE_SS ;
 int EINVAL ;
 int USB_DIR_IN ;


 int dev_dbg (int ,char*,int,int,int) ;
 int dev_err (int ,char*,int ) ;
 int * ep0_state_string ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int setup_first_bd_ep0(struct bdc *bdc, struct bdc_req *req, u32 *dword3)
{
 u16 wValue;
 u32 req_len;

 req->ep->dir = 0;
 req_len = req->usb_req.length;
 switch (bdc->ep0_state) {
 case 129:
  *dword3 |= BD_TYPE_DS;
  if (bdc->setup_pkt.bRequestType & USB_DIR_IN)
   *dword3 |= BD_DIR_IN;


  wValue = le16_to_cpu(bdc->setup_pkt.wValue);
  if ((wValue > req_len) &&
    (req_len % bdc->gadget.ep0->maxpacket == 0)) {
   dev_dbg(bdc->dev, "ZLP needed wVal:%d len:%d MaxP:%d\n",
     wValue, req_len,
     bdc->gadget.ep0->maxpacket);
   bdc->zlp_needed = 1;
  }
  break;

 case 128:
  *dword3 |= BD_TYPE_SS;
  if (!le16_to_cpu(bdc->setup_pkt.wLength) ||
    !(bdc->setup_pkt.bRequestType & USB_DIR_IN))
   *dword3 |= BD_DIR_IN;
  break;
 default:
  dev_err(bdc->dev,
   "Unknown ep0 state for queueing bd ep0_state:%s\n",
   ep0_state_string[bdc->ep0_state]);
  return -EINVAL;
 }

 return 0;
}
