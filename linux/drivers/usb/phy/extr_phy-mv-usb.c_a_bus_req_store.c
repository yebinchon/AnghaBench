
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int a_bus_req; scalar_t__ a_bus_drop; } ;
struct TYPE_6__ {TYPE_1__* otg; } ;
struct mv_otg {int wq_lock; TYPE_4__* pdev; TYPE_3__ otg_ctrl; TYPE_2__ phy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {scalar_t__ state; } ;


 scalar_t__ OTG_STATE_A_IDLE ;
 scalar_t__ OTG_STATE_B_IDLE ;
 int dev_dbg (int *,char*) ;
 struct mv_otg* dev_get_drvdata (struct device*) ;
 int mv_otg_enable (struct mv_otg*) ;
 int mv_otg_init_irq (struct mv_otg*) ;
 int mv_otg_run_state_machine (struct mv_otg*,int ) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t
a_bus_req_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct mv_otg *mvotg = dev_get_drvdata(dev);

 if (count > 2)
  return -1;


 if (mvotg->phy.otg->state != OTG_STATE_B_IDLE
     && mvotg->phy.otg->state != OTG_STATE_A_IDLE)
  return -1;


 mv_otg_enable(mvotg);
 mv_otg_init_irq(mvotg);

 if (buf[0] == '1') {
  mvotg->otg_ctrl.a_bus_req = 1;
  mvotg->otg_ctrl.a_bus_drop = 0;
  dev_dbg(&mvotg->pdev->dev,
   "User request: a_bus_req = 1\n");

  if (spin_trylock(&mvotg->wq_lock)) {
   mv_otg_run_state_machine(mvotg, 0);
   spin_unlock(&mvotg->wq_lock);
  }
 }

 return count;
}
