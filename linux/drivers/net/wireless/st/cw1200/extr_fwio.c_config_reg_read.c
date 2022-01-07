
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cw1200_common {int hw_type; } ;





 int ST90TDS_CONFIG_REG_ID ;
 int cw1200_reg_read_16 (struct cw1200_common*,int ,int *) ;
 int cw1200_reg_read_32 (struct cw1200_common*,int ,int *) ;

__attribute__((used)) static int config_reg_read(struct cw1200_common *priv, u32 *val)
{
 switch (priv->hw_type) {
 case 128: {
  u16 val16;
  int ret = cw1200_reg_read_16(priv,
          ST90TDS_CONFIG_REG_ID,
          &val16);
  if (ret < 0)
   return ret;
  *val = val16;
  return 0;
 }
 case 129:
 case 130:
 default:
  cw1200_reg_read_32(priv, ST90TDS_CONFIG_REG_ID, val);
  break;
 }
 return 0;
}
