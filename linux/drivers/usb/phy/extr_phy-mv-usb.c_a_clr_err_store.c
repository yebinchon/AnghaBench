
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int a_clr_err; } ;
struct TYPE_7__ {TYPE_2__* otg; } ;
struct mv_otg {int wq_lock; TYPE_1__* pdev; TYPE_4__ otg_ctrl; TYPE_3__ phy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int default_a; } ;
struct TYPE_5__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct mv_otg* dev_get_drvdata (struct device*) ;
 int mv_otg_run_state_machine (struct mv_otg*,int ) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t
a_clr_err_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct mv_otg *mvotg = dev_get_drvdata(dev);
 if (!mvotg->phy.otg->default_a)
  return -1;

 if (count > 2)
  return -1;

 if (buf[0] == '1') {
  mvotg->otg_ctrl.a_clr_err = 1;
  dev_dbg(&mvotg->pdev->dev,
   "User request: a_clr_err = 1\n");
 }

 if (spin_trylock(&mvotg->wq_lock)) {
  mv_otg_run_state_machine(mvotg, 0);
  spin_unlock(&mvotg->wq_lock);
 }

 return count;
}
