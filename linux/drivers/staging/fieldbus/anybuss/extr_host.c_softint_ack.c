
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int softint_pending; int regmap; int ind_ab; int power_on; } ;


 unsigned int IND_AX_EVNT ;
 int REG_IND_AP ;
 unsigned int atomic_read (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int write_ind_ap (int ,unsigned int) ;

__attribute__((used)) static void softint_ack(struct anybuss_host *cd)
{
 unsigned int ind_ap;

 cd->softint_pending = 0;
 if (!cd->power_on)
  return;
 regmap_read(cd->regmap, REG_IND_AP, &ind_ap);
 ind_ap &= ~IND_AX_EVNT;
 ind_ap |= atomic_read(&cd->ind_ab) & IND_AX_EVNT;
 write_ind_ap(cd->regmap, ind_ap);
}
