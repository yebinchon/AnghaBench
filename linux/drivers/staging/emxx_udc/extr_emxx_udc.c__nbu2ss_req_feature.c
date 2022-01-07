
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int bRequestType; int wLength; int wIndex; int wValue; } ;
struct nbu2ss_udc {int ep0_buf; TYPE_1__ ctrl; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int USB_DIR_IN ;
 scalar_t__ USB_DIR_OUT ;
 int USB_ENDPOINT_HALT ;


 int USB_RECIP_MASK ;
 int _nbu2ss_create_ep0_packet (struct nbu2ss_udc*,int ,int ) ;
 int _nbu2ss_endpoint_toggle_reset (struct nbu2ss_udc*,scalar_t__) ;
 int _nbu2ss_set_endpoint_stall (struct nbu2ss_udc*,scalar_t__,int) ;
 int _nbu2ss_set_feature_device (struct nbu2ss_udc*,int,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int _nbu2ss_req_feature(struct nbu2ss_udc *udc, bool bset)
{
 u8 recipient = (u8)(udc->ctrl.bRequestType & USB_RECIP_MASK);
 u8 direction = (u8)(udc->ctrl.bRequestType & USB_DIR_IN);
 u16 selector = le16_to_cpu(udc->ctrl.wValue);
 u16 wIndex = le16_to_cpu(udc->ctrl.wIndex);
 u8 ep_adrs;
 int result = -EOPNOTSUPP;

 if ((udc->ctrl.wLength != 0x0000) ||
     (direction != USB_DIR_OUT)) {
  return -EINVAL;
 }

 switch (recipient) {
 case 129:
  if (bset)
   result =
   _nbu2ss_set_feature_device(udc, selector, wIndex);
  break;

 case 128:
  if (0x0000 == (wIndex & 0xFF70)) {
   if (selector == USB_ENDPOINT_HALT) {
    ep_adrs = wIndex & 0xFF;
    if (!bset) {
     _nbu2ss_endpoint_toggle_reset(udc,
              ep_adrs);
    }

    _nbu2ss_set_endpoint_stall(udc, ep_adrs, bset);

    result = 0;
   }
  }
  break;

 default:
  break;
 }

 if (result >= 0)
  _nbu2ss_create_ep0_packet(udc, udc->ep0_buf, 0);

 return result;
}
