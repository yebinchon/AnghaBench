
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int bRequestType; int wIndex; int wLength; int wValue; } ;
struct nbu2ss_udc {int ep0_buf; TYPE_1__* p_regs; TYPE_2__ ctrl; } ;
struct TYPE_3__ {int USB_ADDRESS; } ;


 int EINVAL ;
 int USB_ADRS_SHIFT ;
 int _nbu2ss_create_ep0_packet (struct nbu2ss_udc*,int ,int ) ;
 int _nbu2ss_writel (int *,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int std_req_set_address(struct nbu2ss_udc *udc)
{
 int result = 0;
 u32 wValue = le16_to_cpu(udc->ctrl.wValue);

 if ((udc->ctrl.bRequestType != 0x00) ||
     (udc->ctrl.wIndex != 0x0000) ||
  (udc->ctrl.wLength != 0x0000)) {
  return -EINVAL;
 }

 if (wValue != (wValue & 0x007F))
  return -EINVAL;

 wValue <<= USB_ADRS_SHIFT;

 _nbu2ss_writel(&udc->p_regs->USB_ADDRESS, wValue);
 _nbu2ss_create_ep0_packet(udc, udc->ep0_buf, 0);

 return result;
}
