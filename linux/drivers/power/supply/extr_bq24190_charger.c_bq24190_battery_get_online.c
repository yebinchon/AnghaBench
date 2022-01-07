
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct bq24190_dev_info {int dummy; } ;


 int BQ24190_REG_MOC ;
 int BQ24190_REG_MOC_BATFET_DISABLE_MASK ;
 int BQ24190_REG_MOC_BATFET_DISABLE_SHIFT ;
 int bq24190_read_mask (struct bq24190_dev_info*,int ,int ,int ,int *) ;

__attribute__((used)) static int bq24190_battery_get_online(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 u8 batfet_disable;
 int ret;

 ret = bq24190_read_mask(bdi, BQ24190_REG_MOC,
   BQ24190_REG_MOC_BATFET_DISABLE_MASK,
   BQ24190_REG_MOC_BATFET_DISABLE_SHIFT, &batfet_disable);
 if (ret < 0)
  return ret;

 val->intval = !batfet_disable;
 return 0;
}
