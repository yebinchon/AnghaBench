
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zd_chip {int mutex; } ;


 int E2P_SUBID ;
 int dev_dbg_f (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_ioread32_locked (struct zd_chip*,int*,int ) ;

int zd_read_regdomain(struct zd_chip *chip, u8 *regdomain)
{
 int r;
 u32 value;

 mutex_lock(&chip->mutex);
 r = zd_ioread32_locked(chip, &value, E2P_SUBID);
 mutex_unlock(&chip->mutex);
 if (r)
  return r;

 *regdomain = value >> 16;
 dev_dbg_f(zd_chip_dev(chip), "regdomain: %#04x\n", *regdomain);

 return 0;
}
