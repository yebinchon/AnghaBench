
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_thermal_priv {int thermal; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TMON_TRIP_TYPE_HIGH ;
 int TMON_TRIP_TYPE_LOW ;
 int avs_tmon_get_intr_temp (struct brcmstb_thermal_priv*) ;
 int avs_tmon_get_trip_temp (struct brcmstb_thermal_priv*,int ) ;
 int avs_tmon_trip_enable (struct brcmstb_thermal_priv*,int ,int ) ;
 int dev_dbg (int ,char*,int,int,int) ;
 int thermal_zone_device_update (int ,int) ;

__attribute__((used)) static irqreturn_t brcmstb_tmon_irq_thread(int irq, void *data)
{
 struct brcmstb_thermal_priv *priv = data;
 int low, high, intr;

 low = avs_tmon_get_trip_temp(priv, TMON_TRIP_TYPE_LOW);
 high = avs_tmon_get_trip_temp(priv, TMON_TRIP_TYPE_HIGH);
 intr = avs_tmon_get_intr_temp(priv);

 dev_dbg(priv->dev, "low/intr/high: %d/%d/%d\n",
   low, intr, high);


 if (intr >= high)
  avs_tmon_trip_enable(priv, TMON_TRIP_TYPE_HIGH, 0);

 if (intr <= low)
  avs_tmon_trip_enable(priv, TMON_TRIP_TYPE_LOW, 0);





 thermal_zone_device_update(priv->thermal, intr);

 return IRQ_HANDLED;
}
