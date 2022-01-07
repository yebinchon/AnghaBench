
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct armada_thermal_priv {int current_threshold; int current_hysteresis; int overheat_sensor; TYPE_1__* data; int syscon; int update_lock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dfx_irq_cause_off; } ;


 int IRQ_HANDLED ;
 int OVERHEAT_INT_POLL_DELAY_MS ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int armada_read_sensor (struct armada_thermal_priv*,int*) ;
 int enable_irq (int) ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int *) ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t armada_overheat_isr_thread(int irq, void *blob)
{
 struct armada_thermal_priv *priv = blob;
 int low_threshold = priv->current_threshold - priv->current_hysteresis;
 int temperature;
 u32 dummy;
 int ret;


 thermal_zone_device_update(priv->overheat_sensor,
       THERMAL_EVENT_UNSPECIFIED);






 do {
  msleep(OVERHEAT_INT_POLL_DELAY_MS);
  mutex_lock(&priv->update_lock);
  ret = armada_read_sensor(priv, &temperature);
  mutex_unlock(&priv->update_lock);
  if (ret)
   goto enable_irq;
 } while (temperature >= low_threshold);

 regmap_read(priv->syscon, priv->data->dfx_irq_cause_off, &dummy);


 thermal_zone_device_update(priv->overheat_sensor,
       THERMAL_EVENT_UNSPECIFIED);

enable_irq:
 enable_irq(irq);

 return IRQ_HANDLED;
}
