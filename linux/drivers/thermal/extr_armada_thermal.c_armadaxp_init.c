
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct armada_thermal_priv {int syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {int syscon_status_off; int syscon_control1_off; } ;


 int PMU_TDC0_OTF_CAL_MASK ;
 int PMU_TDC0_REF_CAL_CNT_MASK ;
 int PMU_TDC0_REF_CAL_CNT_OFFS ;
 int PMU_TDC0_SW_RST_MASK ;
 int PMU_TM_DISABLE_MASK ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void armadaxp_init(struct platform_device *pdev,
     struct armada_thermal_priv *priv)
{
 struct armada_thermal_data *data = priv->data;
 u32 reg;

 regmap_read(priv->syscon, data->syscon_control1_off, &reg);
 reg |= PMU_TDC0_OTF_CAL_MASK;


 reg &= ~PMU_TDC0_REF_CAL_CNT_MASK;
 reg |= (0xf1 << PMU_TDC0_REF_CAL_CNT_OFFS);


 reg |= PMU_TDC0_SW_RST_MASK;

 regmap_write(priv->syscon, data->syscon_control1_off, reg);


 regmap_read(priv->syscon, data->syscon_status_off, &reg);
 reg &= ~PMU_TM_DISABLE_MASK;
 regmap_write(priv->syscon, data->syscon_status_off, reg);
}
