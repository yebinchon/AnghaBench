
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int (* switch_radio_on ) (struct zd_rf*) ;} ;
struct zd_chip {int mutex; } ;


 int ZD_ASSERT (int ) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct zd_rf*) ;
 int zd_chip_lock_phy_regs (struct zd_chip*) ;
 int zd_chip_unlock_phy_regs (struct zd_chip*) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

int zd_switch_radio_on(struct zd_rf *rf)
{
 int r, t;
 struct zd_chip *chip = zd_rf_to_chip(rf);

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 r = zd_chip_lock_phy_regs(chip);
 if (r)
  return r;
 t = rf->switch_radio_on(rf);
 r = zd_chip_unlock_phy_regs(chip);
 if (t)
  r = t;
 return r;
}
