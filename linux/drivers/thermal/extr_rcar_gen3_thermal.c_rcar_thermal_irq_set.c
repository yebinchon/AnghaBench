
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_gen3_thermal_priv {unsigned int num_tscs; int * tscs; } ;


 int IRQ_TEMP2 ;
 int IRQ_TEMPD1 ;
 int REG_GEN3_IRQMSK ;
 int rcar_gen3_thermal_write (int ,int ,int) ;

__attribute__((used)) static void rcar_thermal_irq_set(struct rcar_gen3_thermal_priv *priv, bool on)
{
 unsigned int i;
 u32 val = on ? IRQ_TEMPD1 | IRQ_TEMP2 : 0;

 for (i = 0; i < priv->num_tscs; i++)
  rcar_gen3_thermal_write(priv->tscs[i], REG_GEN3_IRQMSK, val);
}
