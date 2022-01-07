
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zd_chip {int mutex; } ;


 int CR_BASIC_RATE_TBL ;
 int CR_RATES_80211B ;
 int CR_RATES_80211G ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_iowrite32_locked (struct zd_chip*,int,int ) ;

int zd_chip_set_basic_rates(struct zd_chip *chip, u16 cr_rates)
{
 int r;

 if (cr_rates & ~(CR_RATES_80211B|CR_RATES_80211G))
  return -EINVAL;

 mutex_lock(&chip->mutex);
 r = zd_iowrite32_locked(chip, cr_rates, CR_BASIC_RATE_TBL);
 mutex_unlock(&chip->mutex);
 return r;
}
