
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int regmap; } ;


 int ENODATA ;
 int STAT_A ;
 unsigned int STAT_A_FLOAT_VOLTAGE_MASK ;
 int regmap_read (int ,int ,unsigned int*) ;
 int smb347_is_ps_online (struct smb347_charger*) ;

__attribute__((used)) static int get_const_charge_voltage(struct smb347_charger *smb)
{
 int ret, intval;
 unsigned int v;

 if (!smb347_is_ps_online(smb))
  return -ENODATA;

 ret = regmap_read(smb->regmap, STAT_A, &v);
 if (ret < 0)
  return ret;

 v &= STAT_A_FLOAT_VOLTAGE_MASK;
 if (v > 0x3d)
  v = 0x3d;

 intval = 3500000 + v * 20000;

 return intval;
}
