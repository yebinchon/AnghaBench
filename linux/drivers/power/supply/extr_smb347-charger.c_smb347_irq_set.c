
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int regmap; } ;


 int CFG_FAULT_IRQ ;
 int CFG_FAULT_IRQ_DCIN_UV ;
 int CFG_PIN ;
 int CFG_PIN_EN_CHARGER_ERROR ;
 int CFG_STATUS_IRQ ;
 int CFG_STATUS_IRQ_CHARGE_TIMEOUT ;
 int CFG_STATUS_IRQ_TERMINATION_OR_TAPER ;
 int regmap_update_bits (int ,int ,int,int) ;
 int smb347_set_writable (struct smb347_charger*,int) ;

__attribute__((used)) static int smb347_irq_set(struct smb347_charger *smb, bool enable)
{
 int ret;

 ret = smb347_set_writable(smb, 1);
 if (ret < 0)
  return ret;
 ret = regmap_update_bits(smb->regmap, CFG_FAULT_IRQ, 0xff,
     enable ? CFG_FAULT_IRQ_DCIN_UV : 0);
 if (ret < 0)
  goto fail;

 ret = regmap_update_bits(smb->regmap, CFG_STATUS_IRQ, 0xff,
   enable ? (CFG_STATUS_IRQ_TERMINATION_OR_TAPER |
     CFG_STATUS_IRQ_CHARGE_TIMEOUT) : 0);
 if (ret < 0)
  goto fail;

 ret = regmap_update_bits(smb->regmap, CFG_PIN, CFG_PIN_EN_CHARGER_ERROR,
     enable ? CFG_PIN_EN_CHARGER_ERROR : 0);
fail:
 smb347_set_writable(smb, 0);
 return ret;
}
