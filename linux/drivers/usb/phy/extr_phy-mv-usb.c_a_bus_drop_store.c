
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int a_bus_drop; scalar_t__ a_bus_req; } ;
struct TYPE_6__ {TYPE_1__* otg; } ;
struct mv_otg {int wq_lock; TYPE_4__* pdev; TYPE_3__ otg_ctrl; TYPE_2__ phy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {int default_a; } ;


 int dev_dbg (int *,char*) ;
 struct mv_otg* dev_get_drvdata (struct device*) ;
 int mv_otg_run_state_machine (struct mv_otg*,int ) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t
a_bus_drop_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct mv_otg *mvotg = dev_get_drvdata(dev);
 if (!mvotg->phy.otg->default_a)
  return -1;

 if (count > 2)
  return -1;

 if (buf[0] == '0') {
  mvotg->otg_ctrl.a_bus_drop = 0;
  dev_dbg(&mvotg->pdev->dev,
   "User request: a_bus_drop = 0\n");
 } else if (buf[0] == '1') {
  mvotg->otg_ctrl.a_bus_drop = 1;
  mvotg->otg_ctrl.a_bus_req = 0;
  dev_dbg(&mvotg->pdev->dev,
   "User request: a_bus_drop = 1\n");
  dev_dbg(&mvotg->pdev->dev,
   "User request: and a_bus_req = 0\n");
 }

 if (spin_trylock(&mvotg->wq_lock)) {
  mv_otg_run_state_machine(mvotg, 0);
  spin_unlock(&mvotg->wq_lock);
 }

 return count;
}
