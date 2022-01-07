
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int power_on; int dev; int irq; int card_boot; } ;
struct ab_task {scalar_t__ start_jiffies; } ;


 int EINPROGRESS ;
 int ETIMEDOUT ;
 scalar_t__ TIMEOUT ;
 scalar_t__ completion_done (int *) ;
 int dev_err (int ,char*) ;
 int disable_irq (int ) ;
 int jiffies ;
 int reset_assert (struct anybuss_host*) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static int task_fn_power_on_2(struct anybuss_host *cd,
         struct ab_task *t)
{
 if (completion_done(&cd->card_boot)) {
  cd->power_on = 1;
  return 0;
 }
 if (time_after(jiffies, t->start_jiffies + TIMEOUT)) {
  disable_irq(cd->irq);
  reset_assert(cd);
  dev_err(cd->dev, "power on timed out");
  return -ETIMEDOUT;
 }
 return -EINPROGRESS;
}
