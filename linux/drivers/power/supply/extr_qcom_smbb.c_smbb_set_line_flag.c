
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {int status; int dev; int statlock; } ;


 int IRQCHIP_STATE_LINE_LEVEL ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int irq_get_irqchip_state (int,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void smbb_set_line_flag(struct smbb_charger *chg, int irq, int flag)
{
 bool state;
 int ret;

 ret = irq_get_irqchip_state(irq, IRQCHIP_STATE_LINE_LEVEL, &state);
 if (ret < 0) {
  dev_err(chg->dev, "failed to read irq line\n");
  return;
 }

 mutex_lock(&chg->statlock);
 if (state)
  chg->status |= flag;
 else
  chg->status &= ~flag;
 mutex_unlock(&chg->statlock);

 dev_dbg(chg->dev, "status = %03lx\n", chg->status);
}
