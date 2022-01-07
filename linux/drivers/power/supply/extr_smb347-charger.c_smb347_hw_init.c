
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb347_charger {int regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {int enable_control; scalar_t__ use_usb_otg; int use_usb; } ;


 int CFG_OTHER ;
 unsigned int CFG_OTHER_RID_ENABLED_AUTO_OTG ;
 unsigned int CFG_OTHER_RID_MASK ;
 int CFG_PIN ;
 unsigned int CFG_PIN_EN_APSD_IRQ ;
 unsigned int CFG_PIN_EN_CTRL_ACTIVE_HIGH ;
 unsigned int CFG_PIN_EN_CTRL_ACTIVE_LOW ;
 unsigned int CFG_PIN_EN_CTRL_MASK ;
 int CMD_A ;
 unsigned int CMD_A_SUSPEND_ENABLED ;


 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int smb347_set_charge_current (struct smb347_charger*) ;
 int smb347_set_current_limits (struct smb347_charger*) ;
 int smb347_set_temp_limits (struct smb347_charger*) ;
 int smb347_set_voltage_limits (struct smb347_charger*) ;
 int smb347_set_writable (struct smb347_charger*,int) ;
 int smb347_start_stop_charging (struct smb347_charger*) ;
 int smb347_update_ps_status (struct smb347_charger*) ;

__attribute__((used)) static int smb347_hw_init(struct smb347_charger *smb)
{
 unsigned int val;
 int ret;

 ret = smb347_set_writable(smb, 1);
 if (ret < 0)
  return ret;





 ret = smb347_set_charge_current(smb);
 if (ret < 0)
  goto fail;

 ret = smb347_set_current_limits(smb);
 if (ret < 0)
  goto fail;

 ret = smb347_set_voltage_limits(smb);
 if (ret < 0)
  goto fail;

 ret = smb347_set_temp_limits(smb);
 if (ret < 0)
  goto fail;


 if (!smb->pdata->use_usb) {
  ret = regmap_update_bits(smb->regmap, CMD_A,
      CMD_A_SUSPEND_ENABLED,
      CMD_A_SUSPEND_ENABLED);
  if (ret < 0)
   goto fail;
 }





 ret = regmap_update_bits(smb->regmap, CFG_OTHER, CFG_OTHER_RID_MASK,
  smb->pdata->use_usb_otg ? CFG_OTHER_RID_ENABLED_AUTO_OTG : 0);
 if (ret < 0)
  goto fail;






 switch (smb->pdata->enable_control) {
 case 128:
  val = CFG_PIN_EN_CTRL_ACTIVE_LOW;
  break;
 case 129:
  val = CFG_PIN_EN_CTRL_ACTIVE_HIGH;
  break;
 default:
  val = 0;
  break;
 }

 ret = regmap_update_bits(smb->regmap, CFG_PIN, CFG_PIN_EN_CTRL_MASK,
     val);
 if (ret < 0)
  goto fail;


 ret = regmap_update_bits(smb->regmap, CFG_PIN, CFG_PIN_EN_APSD_IRQ, 0);
 if (ret < 0)
  goto fail;

 ret = smb347_update_ps_status(smb);
 if (ret < 0)
  goto fail;

 ret = smb347_start_stop_charging(smb);

fail:
 smb347_set_writable(smb, 0);
 return ret;
}
