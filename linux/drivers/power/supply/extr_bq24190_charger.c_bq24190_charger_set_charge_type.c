
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct bq24190_dev_info {int dummy; } ;


 int BQ24190_REG_CCC ;
 int BQ24190_REG_CCC_FORCE_20PCT_MASK ;
 int BQ24190_REG_CCC_FORCE_20PCT_SHIFT ;
 int BQ24190_REG_CTTC ;
 int BQ24190_REG_CTTC_EN_TERM_MASK ;
 int BQ24190_REG_CTTC_EN_TERM_SHIFT ;
 int BQ24190_REG_POC ;
 int BQ24190_REG_POC_CHG_CONFIG_MASK ;
 int BQ24190_REG_POC_CHG_CONFIG_SHIFT ;
 int EINVAL ;



 int bq24190_write_mask (struct bq24190_dev_info*,int ,int ,int ,int) ;

__attribute__((used)) static int bq24190_charger_set_charge_type(struct bq24190_dev_info *bdi,
  const union power_supply_propval *val)
{
 u8 chg_config, force_20pct, en_term;
 int ret;
 switch (val->intval) {
 case 129:
  chg_config = 0x0;
  break;
 case 128:
  chg_config = 0x1;
  force_20pct = 0x1;
  en_term = 0x0;
  break;
 case 130:
  chg_config = 0x1;
  force_20pct = 0x0;
  en_term = 0x1;
  break;
 default:
  return -EINVAL;
 }

 if (chg_config) {
  ret = bq24190_write_mask(bdi, BQ24190_REG_CCC,
    BQ24190_REG_CCC_FORCE_20PCT_MASK,
    BQ24190_REG_CCC_FORCE_20PCT_SHIFT,
    force_20pct);
  if (ret < 0)
   return ret;

  ret = bq24190_write_mask(bdi, BQ24190_REG_CTTC,
    BQ24190_REG_CTTC_EN_TERM_MASK,
    BQ24190_REG_CTTC_EN_TERM_SHIFT,
    en_term);
  if (ret < 0)
   return ret;
 }

 return bq24190_write_mask(bdi, BQ24190_REG_POC,
   BQ24190_REG_POC_CHG_CONFIG_MASK,
   BQ24190_REG_POC_CHG_CONFIG_SHIFT, chg_config);
}
