
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb347_charger {int charging_enabled; int lock; int regmap; int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ enable_control; } ;


 int CMD_A ;
 int CMD_A_CHG_ENABLED ;
 scalar_t__ SMB347_CHG_ENABLE_SW ;
 int dev_dbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int smb347_charging_set(struct smb347_charger *smb, bool enable)
{
 int ret = 0;

 if (smb->pdata->enable_control != SMB347_CHG_ENABLE_SW) {
  dev_dbg(smb->dev, "charging enable/disable in SW disabled\n");
  return 0;
 }

 mutex_lock(&smb->lock);
 if (smb->charging_enabled != enable) {
  ret = regmap_update_bits(smb->regmap, CMD_A, CMD_A_CHG_ENABLED,
      enable ? CMD_A_CHG_ENABLED : 0);
  if (!ret)
   smb->charging_enabled = enable;
 }
 mutex_unlock(&smb->lock);
 return ret;
}
