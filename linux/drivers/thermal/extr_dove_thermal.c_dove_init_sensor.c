
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dove_thermal_priv {int sensor; int control; } ;


 int DOVE_THERMAL_TEMP_MASK ;
 int EIO ;
 int PMU_TDC0_AVG_NUM_MASK ;
 int PMU_TDC0_AVG_NUM_OFFS ;
 int PMU_TDC0_REF_CAL_CNT_MASK ;
 int PMU_TDC0_REF_CAL_CNT_OFFS ;
 int PMU_TDC0_SEL_VCAL_MASK ;
 int PMU_TDC0_SEL_VCAL_OFFS ;
 int PMU_TDC0_SW_RST_MASK ;
 int PMU_TM_DISABLE_MASK ;
 int readl_relaxed (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int dove_init_sensor(const struct dove_thermal_priv *priv)
{
 u32 reg;
 u32 i;


 reg = readl_relaxed(priv->control);


 reg &= ~PMU_TDC0_AVG_NUM_MASK;
 reg |= (0x1 << PMU_TDC0_AVG_NUM_OFFS);


 reg &= ~PMU_TDC0_REF_CAL_CNT_MASK;
 reg |= (0x0F1 << PMU_TDC0_REF_CAL_CNT_OFFS);


 reg &= ~PMU_TDC0_SEL_VCAL_MASK;
 reg |= (0x2 << PMU_TDC0_SEL_VCAL_OFFS);
 writel(reg, priv->control);


 reg = readl_relaxed(priv->control);
 writel((reg | PMU_TDC0_SW_RST_MASK), priv->control);
 writel(reg, priv->control);


 reg = readl_relaxed(priv->sensor);
 reg &= ~PMU_TM_DISABLE_MASK;
 writel(reg, priv->sensor);


 for (i = 0; i < 1000000; i++) {
  reg = readl_relaxed(priv->sensor);
  if (reg & DOVE_THERMAL_TEMP_MASK)
   break;
 }

 if (i == 1000000)
  return -EIO;

 return 0;
}
