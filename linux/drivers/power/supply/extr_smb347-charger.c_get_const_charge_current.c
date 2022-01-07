
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int ENODATA ;
 int STAT_B ;
 int fcc_tbl ;
 int hw_to_current (int ,int ,unsigned int) ;
 int pcc_tbl ;
 int regmap_read (int ,int ,unsigned int*) ;
 int smb347_is_ps_online (struct smb347_charger*) ;

__attribute__((used)) static int get_const_charge_current(struct smb347_charger *smb)
{
 int ret, intval;
 unsigned int v;

 if (!smb347_is_ps_online(smb))
  return -ENODATA;

 ret = regmap_read(smb->regmap, STAT_B, &v);
 if (ret < 0)
  return ret;





 if (v & 0x20) {
  intval = hw_to_current(fcc_tbl, ARRAY_SIZE(fcc_tbl), v & 7);
 } else {
  v >>= 3;
  intval = hw_to_current(pcc_tbl, ARRAY_SIZE(pcc_tbl), v & 7);
 }

 return intval;
}
