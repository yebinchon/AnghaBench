
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct TYPE_3__ {int * host; } ;
struct ci_hdrc {TYPE_2__* platdata; TYPE_1__ otg; struct usb_hcd* hcd; int irq; int role; } ;
struct TYPE_4__ {int flags; scalar_t__ pins_default; int pctl; scalar_t__ pins_host; scalar_t__ reg_vbus; int (* notify_event ) (struct ci_hdrc*,int ) ;} ;


 int CI_HDRC_CONTROLLER_STOPPED_EVENT ;
 int CI_HDRC_TURN_VBUS_EARLY_ON ;
 int CI_ROLE_END ;
 int ci_otg_is_fsm_mode (struct ci_hdrc*) ;
 int pinctrl_select_state (int ,scalar_t__) ;
 int regulator_disable (scalar_t__) ;
 int stub1 (struct ci_hdrc*,int ) ;
 int synchronize_irq (int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void host_stop(struct ci_hdrc *ci)
{
 struct usb_hcd *hcd = ci->hcd;

 if (hcd) {
  if (ci->platdata->notify_event)
   ci->platdata->notify_event(ci,
    CI_HDRC_CONTROLLER_STOPPED_EVENT);
  usb_remove_hcd(hcd);
  ci->role = CI_ROLE_END;
  synchronize_irq(ci->irq);
  usb_put_hcd(hcd);
  if (ci->platdata->reg_vbus && !ci_otg_is_fsm_mode(ci) &&
   (ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON))
    regulator_disable(ci->platdata->reg_vbus);
 }
 ci->hcd = ((void*)0);
 ci->otg.host = ((void*)0);

 if (ci->platdata->pins_host && ci->platdata->pins_default)
  pinctrl_select_state(ci->platdata->pctl,
         ci->platdata->pins_default);
}
