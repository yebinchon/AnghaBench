
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct armada_thermal_priv {int syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {int syscon_control1_off; int syscon_control0_off; } ;


 int CONTROL0_TSEN_OSR_MAX ;
 int CONTROL0_TSEN_OSR_SHIFT ;
 int CONTROL1_TSEN_AVG_MASK ;
 int armada380_init (struct platform_device*,struct armada_thermal_priv*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void armada_cp110_init(struct platform_device *pdev,
         struct armada_thermal_priv *priv)
{
 struct armada_thermal_data *data = priv->data;
 u32 reg;

 armada380_init(pdev, priv);


 regmap_read(priv->syscon, data->syscon_control0_off, &reg);
 reg |= CONTROL0_TSEN_OSR_MAX << CONTROL0_TSEN_OSR_SHIFT;
 regmap_write(priv->syscon, data->syscon_control0_off, reg);


 regmap_read(priv->syscon, data->syscon_control1_off, &reg);
 reg &= ~CONTROL1_TSEN_AVG_MASK;
 reg |= 1;
 regmap_write(priv->syscon, data->syscon_control1_off, reg);
}
