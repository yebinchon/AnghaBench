
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct armada_thermal_priv {int syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {int syscon_control1_off; } ;


 int A375_HW_RESETn ;
 int A375_READOUT_INVERT ;
 int A375_UNIT_CONTROL_MASK ;
 int A375_UNIT_CONTROL_SHIFT ;
 int msleep (int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void armada375_init(struct platform_device *pdev,
      struct armada_thermal_priv *priv)
{
 struct armada_thermal_data *data = priv->data;
 u32 reg;

 regmap_read(priv->syscon, data->syscon_control1_off, &reg);
 reg &= ~(A375_UNIT_CONTROL_MASK << A375_UNIT_CONTROL_SHIFT);
 reg &= ~A375_READOUT_INVERT;
 reg &= ~A375_HW_RESETn;
 regmap_write(priv->syscon, data->syscon_control1_off, reg);

 msleep(20);

 reg |= A375_HW_RESETn;
 regmap_write(priv->syscon, data->syscon_control1_off, reg);

 msleep(50);
}
