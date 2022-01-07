
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int mutex; } ;


 int NL80211_IFTYPE_UNSPECIFIED ;
 int ZD_ASSERT (int ) ;
 int dev_dbg_f (int ,char*) ;
 int hw_init_hmac (struct zd_chip*) ;
 int hw_reset_phy (struct zd_chip*) ;
 int mutex_is_locked (int *) ;
 int set_beacon_interval (struct zd_chip*,int,int ,int ) ;
 int zd_chip_dev (struct zd_chip*) ;

__attribute__((used)) static int hw_init(struct zd_chip *chip)
{
 int r;

 dev_dbg_f(zd_chip_dev(chip), "\n");
 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 r = hw_reset_phy(chip);
 if (r)
  return r;

 r = hw_init_hmac(chip);
 if (r)
  return r;

 return set_beacon_interval(chip, 100, 0, NL80211_IFTYPE_UNSPECIFIED);
}
