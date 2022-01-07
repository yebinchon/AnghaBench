
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ci_hdrc {int wakeup_int; int id_event; int b_sess_valid_event; scalar_t__ role; scalar_t__ is_otg; int dev; scalar_t__ in_lpm; } ;
typedef scalar_t__ irqreturn_t ;
struct TYPE_2__ {scalar_t__ (* irq ) (struct ci_hdrc*) ;} ;


 scalar_t__ CI_ROLE_END ;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int OTGSC_BSVIE ;
 int OTGSC_BSVIS ;
 int OTGSC_IDIE ;
 int OTGSC_IDIS ;
 scalar_t__ ci_otg_fsm_irq (struct ci_hdrc*) ;
 scalar_t__ ci_otg_is_fsm_mode (struct ci_hdrc*) ;
 int ci_otg_queue_work (struct ci_hdrc*) ;
 TYPE_1__* ci_role (struct ci_hdrc*) ;
 int disable_irq_nosync (int) ;
 int hw_read_otgsc (struct ci_hdrc*,int ) ;
 int hw_write_otgsc (struct ci_hdrc*,int,int) ;
 int pm_runtime_get (int ) ;
 scalar_t__ stub1 (struct ci_hdrc*) ;

__attribute__((used)) static irqreturn_t ci_irq(int irq, void *data)
{
 struct ci_hdrc *ci = data;
 irqreturn_t ret = IRQ_NONE;
 u32 otgsc = 0;

 if (ci->in_lpm) {
  disable_irq_nosync(irq);
  ci->wakeup_int = 1;
  pm_runtime_get(ci->dev);
  return IRQ_HANDLED;
 }

 if (ci->is_otg) {
  otgsc = hw_read_otgsc(ci, ~0);
  if (ci_otg_is_fsm_mode(ci)) {
   ret = ci_otg_fsm_irq(ci);
   if (ret == IRQ_HANDLED)
    return ret;
  }
 }





 if (ci->is_otg && (otgsc & OTGSC_IDIE) && (otgsc & OTGSC_IDIS)) {
  ci->id_event = 1;

  hw_write_otgsc(ci, OTGSC_IDIS, OTGSC_IDIS);
  ci_otg_queue_work(ci);
  return IRQ_HANDLED;
 }





 if (ci->is_otg && (otgsc & OTGSC_BSVIE) && (otgsc & OTGSC_BSVIS)) {
  ci->b_sess_valid_event = 1;

  hw_write_otgsc(ci, OTGSC_BSVIS, OTGSC_BSVIS);
  ci_otg_queue_work(ci);
  return IRQ_HANDLED;
 }


 if (ci->role != CI_ROLE_END)
  ret = ci_role(ci)->irq(ci);

 return ret;
}
