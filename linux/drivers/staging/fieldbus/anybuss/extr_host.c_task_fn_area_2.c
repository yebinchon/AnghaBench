
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct area_priv {int flags; int count; int buf; int addr; scalar_t__ is_write; } ;
struct anybuss_host {int regmap; int dev; int ind_ab; int power_on; } ;
struct ab_task {int task_fn; scalar_t__ start_jiffies; struct area_priv area_pd; } ;


 int EINPROGRESS ;
 int EIO ;
 int ETIMEDOUT ;
 unsigned int IND_AP_ABITS ;
 int REG_IND_AP ;
 scalar_t__ TIMEOUT ;
 int atomic_read (int *) ;
 int dev_warn (int ,char*) ;
 int dump_stack () ;
 int jiffies ;
 int regmap_bulk_read (int ,int ,int ,int ) ;
 int regmap_bulk_write (int ,int ,int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int task_fn_area_3 ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int write_ind_ap (int ,unsigned int) ;

__attribute__((used)) static int task_fn_area_2(struct anybuss_host *cd, struct ab_task *t)
{
 struct area_priv *pd = &t->area_pd;
 unsigned int ind_ap;
 int ret;

 if (!cd->power_on)
  return -EIO;
 regmap_read(cd->regmap, REG_IND_AP, &ind_ap);
 if (!(atomic_read(&cd->ind_ab) & pd->flags)) {

  if (time_after(jiffies, t->start_jiffies + TIMEOUT)) {
   dev_warn(cd->dev, "timeout waiting for area");
   dump_stack();
   return -ETIMEDOUT;
  }
  return -EINPROGRESS;
 }

 if (pd->is_write)
  regmap_bulk_write(cd->regmap, pd->addr, pd->buf,
      pd->count);
 else
  regmap_bulk_read(cd->regmap, pd->addr, pd->buf,
     pd->count);

 ind_ap &= ~IND_AP_ABITS;
 ind_ap |= pd->flags;
 ret = write_ind_ap(cd->regmap, ind_ap);
 if (ret)
  return ret;
 t->task_fn = task_fn_area_3;
 return -EINPROGRESS;
}
