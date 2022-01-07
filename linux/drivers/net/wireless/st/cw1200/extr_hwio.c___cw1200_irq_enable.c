
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cw1200_common {scalar_t__ hw_type; } ;


 scalar_t__ HIF_8601_SILICON ;
 int ST90TDS_CONFIG_REG_ID ;
 int ST90TDS_CONF_IRQ_RDY_ENABLE ;
 int ST90TDS_CONT_IRQ_RDY_ENABLE ;
 int __cw1200_reg_read_16 (struct cw1200_common*,int ,int *) ;
 int __cw1200_reg_read_32 (struct cw1200_common*,int ,int *) ;
 int __cw1200_reg_write_16 (struct cw1200_common*,int ,int ) ;
 int __cw1200_reg_write_32 (struct cw1200_common*,int ,int ) ;
 int pr_err (char*) ;

int __cw1200_irq_enable(struct cw1200_common *priv, int enable)
{
 u32 val32;
 u16 val16;
 int ret;

 if (HIF_8601_SILICON == priv->hw_type) {
  ret = __cw1200_reg_read_32(priv, ST90TDS_CONFIG_REG_ID, &val32);
  if (ret < 0) {
   pr_err("Can't read config register.\n");
   return ret;
  }

  if (enable)
   val32 |= ST90TDS_CONF_IRQ_RDY_ENABLE;
  else
   val32 &= ~ST90TDS_CONF_IRQ_RDY_ENABLE;

  ret = __cw1200_reg_write_32(priv, ST90TDS_CONFIG_REG_ID, val32);
  if (ret < 0) {
   pr_err("Can't write config register.\n");
   return ret;
  }
 } else {
  ret = __cw1200_reg_read_16(priv, ST90TDS_CONFIG_REG_ID, &val16);
  if (ret < 0) {
   pr_err("Can't read control register.\n");
   return ret;
  }

  if (enable)
   val16 |= ST90TDS_CONT_IRQ_RDY_ENABLE;
  else
   val16 &= ~ST90TDS_CONT_IRQ_RDY_ENABLE;

  ret = __cw1200_reg_write_16(priv, ST90TDS_CONFIG_REG_ID, val16);
  if (ret < 0) {
   pr_err("Can't write control register.\n");
   return ret;
  }
 }
 return 0;
}
