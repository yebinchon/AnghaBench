
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct area_priv {int flags; } ;
struct anybuss_host {int ind_ab; int power_on; } ;
struct ab_task {scalar_t__ start_jiffies; struct area_priv area_pd; } ;


 int EINPROGRESS ;
 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ TIMEOUT ;
 int atomic_read (int *) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static int task_fn_area_3(struct anybuss_host *cd, struct ab_task *t)
{
 struct area_priv *pd = &t->area_pd;

 if (!cd->power_on)
  return -EIO;
 if (atomic_read(&cd->ind_ab) & pd->flags) {

  if (time_after(jiffies, t->start_jiffies + TIMEOUT))
   return -ETIMEDOUT;
  return -EINPROGRESS;
 }
 return 0;
}
