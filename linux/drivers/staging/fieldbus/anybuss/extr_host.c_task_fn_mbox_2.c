
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_priv {int msg_in_sz; int * msg; int hdr; } ;
struct anybuss_host {int regmap; int ind_ab; int power_on; } ;
struct ab_task {scalar_t__ start_jiffies; struct mbox_priv mbox_pd; } ;


 int EINPROGRESS ;
 int EIO ;
 int ETIMEDOUT ;
 unsigned int IND_AX_MOUT ;
 scalar_t__ MBOX_OUT_AREA ;
 int REG_IND_AP ;
 scalar_t__ TIMEOUT ;
 unsigned int atomic_read (int *) ;
 int jiffies ;
 int regmap_bulk_read (int ,scalar_t__,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int write_ind_ap (int ,unsigned int) ;

__attribute__((used)) static int task_fn_mbox_2(struct anybuss_host *cd, struct ab_task *t)
{
 struct mbox_priv *pd = &t->mbox_pd;
 unsigned int ind_ap;

 if (!cd->power_on)
  return -EIO;
 regmap_read(cd->regmap, REG_IND_AP, &ind_ap);
 if (((atomic_read(&cd->ind_ab) ^ ind_ap) & IND_AX_MOUT) == 0) {

  if (time_after(jiffies, t->start_jiffies + TIMEOUT))
   return -ETIMEDOUT;
  return -EINPROGRESS;
 }

 regmap_bulk_read(cd->regmap, MBOX_OUT_AREA, &pd->hdr,
    sizeof(pd->hdr));
 regmap_bulk_read(cd->regmap, MBOX_OUT_AREA + sizeof(pd->hdr),
    pd->msg, pd->msg_in_sz);

 ind_ap ^= IND_AX_MOUT;
 return write_ind_ap(cd->regmap, ind_ap);
}
