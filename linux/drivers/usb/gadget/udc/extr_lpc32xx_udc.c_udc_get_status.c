
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int is_selfpowered; } ;
struct lpc32xx_udc {int dev_status; struct lpc32xx_ep* ep; TYPE_1__ gadget; } ;
struct lpc32xx_ep {int hwep_num; int is_in; } ;


 int CMD_SEL_EP (int ) ;
 int DAT_SEL_EP (int ) ;
 int EOPNOTSUPP ;
 int EP_IN ;
 int EP_SEL_ST ;
 int NUM_ENDPOINTS ;
 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int udc_protocol_cmd_r (struct lpc32xx_udc*,int ) ;
 int udc_protocol_cmd_w (struct lpc32xx_udc*,int ) ;
 int udc_write_hwep (struct lpc32xx_udc*,int ,int*,int) ;

__attribute__((used)) static int udc_get_status(struct lpc32xx_udc *udc, u16 reqtype, u16 wIndex)
{
 struct lpc32xx_ep *ep;
 u32 ep0buff = 0, tmp;

 switch (reqtype & USB_RECIP_MASK) {
 case 128:
  break;

 case 130:
  ep0buff = udc->gadget.is_selfpowered;
  if (udc->dev_status & (1 << USB_DEVICE_REMOTE_WAKEUP))
   ep0buff |= (1 << USB_DEVICE_REMOTE_WAKEUP);
  break;

 case 129:
  tmp = wIndex & USB_ENDPOINT_NUMBER_MASK;
  ep = &udc->ep[tmp];
  if ((tmp == 0) || (tmp >= NUM_ENDPOINTS))
   return -EOPNOTSUPP;

  if (wIndex & USB_DIR_IN) {
   if (!ep->is_in)
    return -EOPNOTSUPP;
  } else if (ep->is_in)
   return -EOPNOTSUPP;


  udc_protocol_cmd_w(udc, CMD_SEL_EP(ep->hwep_num));
  tmp = udc_protocol_cmd_r(udc, DAT_SEL_EP(ep->hwep_num));

  if (tmp & EP_SEL_ST)
   ep0buff = (1 << USB_ENDPOINT_HALT);
  else
   ep0buff = 0;
  break;

 default:
  break;
 }


 udc_write_hwep(udc, EP_IN, &ep0buff, 2);

 return 0;
}
