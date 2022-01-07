
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int regmap; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int STAT_C ;
 unsigned int STAT_C_CHARGER_ERROR ;
 unsigned int STAT_C_CHG_MASK ;
 unsigned int STAT_C_CHG_SHIFT ;
 unsigned int STAT_C_CHG_TERM ;
 unsigned int STAT_C_HOLDOFF_STAT ;
 int regmap_read (int ,int ,unsigned int*) ;
 int smb347_is_ps_online (struct smb347_charger*) ;

__attribute__((used)) static int smb347_get_charging_status(struct smb347_charger *smb)
{
 int ret, status;
 unsigned int val;

 if (!smb347_is_ps_online(smb))
  return POWER_SUPPLY_STATUS_DISCHARGING;

 ret = regmap_read(smb->regmap, STAT_C, &val);
 if (ret < 0)
  return ret;

 if ((val & STAT_C_CHARGER_ERROR) ||
   (val & STAT_C_HOLDOFF_STAT)) {




  status = POWER_SUPPLY_STATUS_NOT_CHARGING;
 } else {
  if ((val & STAT_C_CHG_MASK) >> STAT_C_CHG_SHIFT) {




   status = POWER_SUPPLY_STATUS_CHARGING;
  } else if (val & STAT_C_CHG_TERM) {





   status = POWER_SUPPLY_STATUS_FULL;
  } else {




   status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  }
 }

 return status;
}
