
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct bq24190_dev_info {int dummy; } ;


 int BQ24190_REG_PCTCC ;
 int BQ24190_REG_PCTCC_IPRECHG_MASK ;
 int BQ24190_REG_PCTCC_IPRECHG_SHIFT ;
 int bq24190_read_mask (struct bq24190_dev_info*,int ,int ,int ,int*) ;

__attribute__((used)) static int bq24190_charger_get_precharge(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 u8 v;
 int ret;

 ret = bq24190_read_mask(bdi, BQ24190_REG_PCTCC,
   BQ24190_REG_PCTCC_IPRECHG_MASK,
   BQ24190_REG_PCTCC_IPRECHG_SHIFT, &v);
 if (ret < 0)
  return ret;

 val->intval = ++v * 128 * 1000;
 return 0;
}
