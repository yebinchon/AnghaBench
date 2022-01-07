
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int regmap; } ;


 int STAT_C ;
 unsigned int STAT_C_CHG_MASK ;
 unsigned int STAT_C_CHG_SHIFT ;
 int regmap_read (int ,int ,unsigned int*) ;
 int smb347_is_ps_online (struct smb347_charger*) ;

__attribute__((used)) static int smb347_charging_status(struct smb347_charger *smb)
{
 unsigned int val;
 int ret;

 if (!smb347_is_ps_online(smb))
  return 0;

 ret = regmap_read(smb->regmap, STAT_C, &val);
 if (ret < 0)
  return 0;

 return (val & STAT_C_CHG_MASK) >> STAT_C_CHG_SHIFT;
}
