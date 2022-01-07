
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada_thermal_priv {int syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {int syscon_control1_off; int dfx_server_irq_mask_off; int dfx_server_irq_en; int dfx_irq_mask_off; int dfx_overheat_irq; int dfx_irq_cause_off; } ;


 int CONTROL1_TSEN_INT_EN ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void armada_enable_overheat_interrupt(struct armada_thermal_priv *priv)
{
 struct armada_thermal_data *data = priv->data;
 u32 reg;


 regmap_read(priv->syscon, data->dfx_irq_cause_off, &reg);


 regmap_read(priv->syscon, data->dfx_irq_mask_off, &reg);
 reg |= data->dfx_overheat_irq;
 regmap_write(priv->syscon, data->dfx_irq_mask_off, reg);


 regmap_read(priv->syscon, data->dfx_server_irq_mask_off, &reg);
 reg |= data->dfx_server_irq_en;
 regmap_write(priv->syscon, data->dfx_server_irq_mask_off, reg);


 regmap_read(priv->syscon, data->syscon_control1_off, &reg);
 reg |= CONTROL1_TSEN_INT_EN;
 regmap_write(priv->syscon, data->syscon_control1_off, reg);
}
