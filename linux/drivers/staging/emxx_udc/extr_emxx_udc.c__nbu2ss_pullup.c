
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int speed; } ;
struct nbu2ss_udc {scalar_t__ vbus_active; TYPE_2__ gadget; TYPE_1__* p_regs; scalar_t__ driver; } ;
struct TYPE_3__ {int USB_CONTROL; } ;


 int CONNECTB ;
 int ESHUTDOWN ;
 int PUE2 ;
 int USB_SPEED_UNKNOWN ;
 int _nbu2ss_readl (int *) ;
 int _nbu2ss_writel (int *,int) ;

__attribute__((used)) static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
{
 u32 reg_dt;

 if (udc->vbus_active == 0)
  return -ESHUTDOWN;

 if (is_on) {

  if (udc->driver) {
   reg_dt = (_nbu2ss_readl(&udc->p_regs->USB_CONTROL)
    | PUE2) & ~(u32)CONNECTB;

   _nbu2ss_writel(&udc->p_regs->USB_CONTROL, reg_dt);
  }

 } else {

  reg_dt = (_nbu2ss_readl(&udc->p_regs->USB_CONTROL) | CONNECTB)
   & ~(u32)PUE2;

  _nbu2ss_writel(&udc->p_regs->USB_CONTROL, reg_dt);
  udc->gadget.speed = USB_SPEED_UNKNOWN;
 }

 return 0;
}
