
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb347_charger {int regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ termination_current; scalar_t__ pre_charge_current; scalar_t__ max_charge_current; } ;


 int ARRAY_SIZE (int ) ;
 int CFG_CHARGE_CURRENT ;
 int CFG_CHARGE_CURRENT_FCC_MASK ;
 int CFG_CHARGE_CURRENT_FCC_SHIFT ;
 int CFG_CHARGE_CURRENT_PCC_MASK ;
 int CFG_CHARGE_CURRENT_PCC_SHIFT ;
 int CFG_CHARGE_CURRENT_TC_MASK ;
 int current_to_hw (int ,int ,scalar_t__) ;
 int fcc_tbl ;
 int pcc_tbl ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int tc_tbl ;

__attribute__((used)) static int smb347_set_charge_current(struct smb347_charger *smb)
{
 int ret;

 if (smb->pdata->max_charge_current) {
  ret = current_to_hw(fcc_tbl, ARRAY_SIZE(fcc_tbl),
        smb->pdata->max_charge_current);
  if (ret < 0)
   return ret;

  ret = regmap_update_bits(smb->regmap, CFG_CHARGE_CURRENT,
      CFG_CHARGE_CURRENT_FCC_MASK,
      ret << CFG_CHARGE_CURRENT_FCC_SHIFT);
  if (ret < 0)
   return ret;
 }

 if (smb->pdata->pre_charge_current) {
  ret = current_to_hw(pcc_tbl, ARRAY_SIZE(pcc_tbl),
        smb->pdata->pre_charge_current);
  if (ret < 0)
   return ret;

  ret = regmap_update_bits(smb->regmap, CFG_CHARGE_CURRENT,
      CFG_CHARGE_CURRENT_PCC_MASK,
      ret << CFG_CHARGE_CURRENT_PCC_SHIFT);
  if (ret < 0)
   return ret;
 }

 if (smb->pdata->termination_current) {
  ret = current_to_hw(tc_tbl, ARRAY_SIZE(tc_tbl),
        smb->pdata->termination_current);
  if (ret < 0)
   return ret;

  ret = regmap_update_bits(smb->regmap, CFG_CHARGE_CURRENT,
      CFG_CHARGE_CURRENT_TC_MASK, ret);
  if (ret < 0)
   return ret;
 }

 return 0;
}
