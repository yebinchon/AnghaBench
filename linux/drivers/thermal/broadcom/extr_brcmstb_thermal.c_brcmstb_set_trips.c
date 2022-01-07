
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_thermal_priv {int dev; } ;


 int INT_MAX ;
 int TMON_TRIP_TYPE_HIGH ;
 int TMON_TRIP_TYPE_LOW ;
 int avs_tmon_set_trip_temp (struct brcmstb_thermal_priv*,int ,int) ;
 int avs_tmon_trip_enable (struct brcmstb_thermal_priv*,int ,int) ;
 int dev_dbg (int ,char*,int,int) ;

__attribute__((used)) static int brcmstb_set_trips(void *data, int low, int high)
{
 struct brcmstb_thermal_priv *priv = data;

 dev_dbg(priv->dev, "set trips %d <--> %d\n", low, high);





 if (low <= -INT_MAX) {
  avs_tmon_trip_enable(priv, TMON_TRIP_TYPE_LOW, 0);
 } else {
  avs_tmon_set_trip_temp(priv, TMON_TRIP_TYPE_LOW, low);
  avs_tmon_trip_enable(priv, TMON_TRIP_TYPE_LOW, 1);
 }


 if (high == INT_MAX) {
  avs_tmon_trip_enable(priv, TMON_TRIP_TYPE_HIGH, 0);
 } else {
  avs_tmon_set_trip_temp(priv, TMON_TRIP_TYPE_HIGH, high);
  avs_tmon_trip_enable(priv, TMON_TRIP_TYPE_HIGH, 1);
 }

 return 0;
}
