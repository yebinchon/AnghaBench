
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tps80031_regulator_platform_data {int dummy; } ;
struct tps80031_regulator {int config_flags; int dev; TYPE_2__* rinfo; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int id; int * ops; } ;
struct TYPE_4__ {int trans_reg; TYPE_1__ desc; } ;


 int MISC2_LDO3_SEL_VIB_MASK ;
 unsigned int MISC2_LDO3_SEL_VIB_VAL ;
 int MISC2_LDOUSB_IN_MASK ;
 unsigned int MISC2_LDOUSB_IN_PMID ;
 unsigned int MISC2_LDOUSB_IN_VSYS ;
 int TPS80031_LDO3_OUTPUT_VIB ;
 int TPS80031_MISC2 ;



 int TPS80031_SLAVE_ID1 ;
 int TPS80031_TRANS_ACTIVE_MASK ;
 unsigned int TPS80031_TRANS_ACTIVE_ON ;
 int TPS80031_TRANS_OFF_MASK ;
 unsigned int TPS80031_TRANS_OFF_OFF ;
 int TPS80031_TRANS_SLEEP_MASK ;
 unsigned int TPS80031_TRANS_SLEEP_OFF ;
 int TPS80031_USBLDO_INPUT_PMID ;
 int TPS80031_USBLDO_INPUT_VSYS ;
 int TPS80031_VBUS_SW_ONLY ;
 int dev_err (int ,char*,int) ;
 int tps80031_update (struct device*,int ,int ,unsigned int,int) ;
 int tps80031_vbus_sw_ops ;

__attribute__((used)) static int tps80031_regulator_config(struct device *parent,
  struct tps80031_regulator *ri,
  struct tps80031_regulator_platform_data *tps80031_pdata)
{
 int ret = 0;

 switch (ri->rinfo->desc.id) {
 case 129:
  if (ri->config_flags & (TPS80031_USBLDO_INPUT_VSYS |
   TPS80031_USBLDO_INPUT_PMID)) {
   unsigned val = 0;
   if (ri->config_flags & TPS80031_USBLDO_INPUT_VSYS)
    val = MISC2_LDOUSB_IN_VSYS;
   else
    val = MISC2_LDOUSB_IN_PMID;

   ret = tps80031_update(parent, TPS80031_SLAVE_ID1,
    TPS80031_MISC2, val,
    MISC2_LDOUSB_IN_MASK);
   if (ret < 0) {
    dev_err(ri->dev,
     "LDOUSB config failed, e= %d\n", ret);
    return ret;
   }
  }
  break;

 case 130:
  if (ri->config_flags & TPS80031_LDO3_OUTPUT_VIB) {
   ret = tps80031_update(parent, TPS80031_SLAVE_ID1,
    TPS80031_MISC2, MISC2_LDO3_SEL_VIB_VAL,
    MISC2_LDO3_SEL_VIB_MASK);
   if (ret < 0) {
    dev_err(ri->dev,
     "LDO3 config failed, e = %d\n", ret);
    return ret;
   }
  }
  break;

 case 128:

  if (!(ri->config_flags & TPS80031_VBUS_SW_ONLY))
   ri->rinfo->desc.ops = &tps80031_vbus_sw_ops;
  break;
 default:
  break;
 }


 ret = tps80031_update(parent, TPS80031_SLAVE_ID1, ri->rinfo->trans_reg,
  TPS80031_TRANS_ACTIVE_ON | TPS80031_TRANS_SLEEP_OFF |
  TPS80031_TRANS_OFF_OFF, TPS80031_TRANS_ACTIVE_MASK |
  TPS80031_TRANS_SLEEP_MASK | TPS80031_TRANS_OFF_MASK);
 if (ret < 0) {
  dev_err(ri->dev, "trans reg update failed, e %d\n", ret);
  return ret;
 }

 return ret;
}
