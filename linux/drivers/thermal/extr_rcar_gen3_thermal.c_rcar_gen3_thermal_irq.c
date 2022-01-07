
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rcar_gen3_thermal_priv {int num_tscs; TYPE_1__** tscs; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int zone; } ;


 int IRQ_HANDLED ;
 int REG_GEN3_IRQSTR ;
 int THERMAL_EVENT_UNSPECIFIED ;
 scalar_t__ rcar_gen3_thermal_read (TYPE_1__*,int ) ;
 int rcar_gen3_thermal_write (TYPE_1__*,int ,int ) ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t rcar_gen3_thermal_irq(int irq, void *data)
{
 struct rcar_gen3_thermal_priv *priv = data;
 u32 status;
 int i;

 for (i = 0; i < priv->num_tscs; i++) {
  status = rcar_gen3_thermal_read(priv->tscs[i], REG_GEN3_IRQSTR);
  rcar_gen3_thermal_write(priv->tscs[i], REG_GEN3_IRQSTR, 0);
  if (status)
   thermal_zone_device_update(priv->tscs[i]->zone,
         THERMAL_EVENT_UNSPECIFIED);
 }

 return IRQ_HANDLED;
}
