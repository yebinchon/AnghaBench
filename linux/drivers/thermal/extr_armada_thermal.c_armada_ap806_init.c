
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct armada_thermal_priv {int syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {int syscon_control0_off; } ;


 int CONTROL0_TSEN_AVG_BYPASS ;
 int CONTROL0_TSEN_ENABLE ;
 int CONTROL0_TSEN_OSR_MAX ;
 int CONTROL0_TSEN_OSR_SHIFT ;
 int CONTROL0_TSEN_RESET ;
 int CONTROL0_TSEN_START ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void armada_ap806_init(struct platform_device *pdev,
         struct armada_thermal_priv *priv)
{
 struct armada_thermal_data *data = priv->data;
 u32 reg;

 regmap_read(priv->syscon, data->syscon_control0_off, &reg);
 reg &= ~CONTROL0_TSEN_RESET;
 reg |= CONTROL0_TSEN_START | CONTROL0_TSEN_ENABLE;


 reg |= CONTROL0_TSEN_OSR_MAX << CONTROL0_TSEN_OSR_SHIFT;


 reg &= ~CONTROL0_TSEN_AVG_BYPASS;

 regmap_write(priv->syscon, data->syscon_control0_off, reg);
}
