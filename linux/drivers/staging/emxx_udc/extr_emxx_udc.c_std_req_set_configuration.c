
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int wIndex; int wLength; int bRequestType; int wValue; } ;
struct nbu2ss_udc {int devstate; TYPE_1__* p_regs; scalar_t__ curr_config; TYPE_2__ ctrl; } ;
struct TYPE_3__ {int USB_CONTROL; } ;


 int CONF ;
 int EINVAL ;
 int USB_STATE_ADDRESS ;
 int USB_STATE_CONFIGURED ;
 int _nbu2ss_bitclr (int *,int ) ;
 int _nbu2ss_bitset (int *,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int std_req_set_configuration(struct nbu2ss_udc *udc)
{
 u32 config_value = (u32)(le16_to_cpu(udc->ctrl.wValue) & 0x00ff);

 if ((udc->ctrl.wIndex != 0x0000) ||
     (udc->ctrl.wLength != 0x0000) ||
  (udc->ctrl.bRequestType != 0x00)) {
  return -EINVAL;
 }

 udc->curr_config = config_value;

 if (config_value > 0) {
  _nbu2ss_bitset(&udc->p_regs->USB_CONTROL, CONF);
  udc->devstate = USB_STATE_CONFIGURED;

 } else {
  _nbu2ss_bitclr(&udc->p_regs->USB_CONTROL, CONF);
  udc->devstate = USB_STATE_ADDRESS;
 }

 return 0;
}
