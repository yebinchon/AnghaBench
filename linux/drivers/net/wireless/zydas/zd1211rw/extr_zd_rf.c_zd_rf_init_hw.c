
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_rf {int type; int (* init_hw ) (struct zd_rf*) ;} ;
struct zd_chip {int mutex; } ;





 int ENODEV ;



 int ZD_ASSERT (int ) ;
 int dev_err (int ,char*,int ,int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct zd_rf*) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_chip_lock_phy_regs (struct zd_chip*) ;
 int zd_chip_unlock_phy_regs (struct zd_chip*) ;
 int zd_rf_init_al2230 (struct zd_rf*) ;
 int zd_rf_init_al7230b (struct zd_rf*) ;
 int zd_rf_init_rf2959 (struct zd_rf*) ;
 int zd_rf_init_uw2453 (struct zd_rf*) ;
 int zd_rf_name (int) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

int zd_rf_init_hw(struct zd_rf *rf, u8 type)
{
 int r = 0;
 int t;
 struct zd_chip *chip = zd_rf_to_chip(rf);

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 switch (type) {
 case 129:
  r = zd_rf_init_rf2959(rf);
  break;
 case 132:
 case 133:
  r = zd_rf_init_al2230(rf);
  break;
 case 131:
  r = zd_rf_init_al7230b(rf);
  break;
 case 130:
 case 128:
  r = zd_rf_init_uw2453(rf);
  break;
 default:
  dev_err(zd_chip_dev(chip),
   "RF %s %#x is not supported\n", zd_rf_name(type), type);
  rf->type = 0;
  return -ENODEV;
 }

 if (r)
  return r;

 rf->type = type;

 r = zd_chip_lock_phy_regs(chip);
 if (r)
  return r;
 t = rf->init_hw(rf);
 r = zd_chip_unlock_phy_regs(chip);
 if (t)
  r = t;
 return r;
}
