
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_thermal_sensor {int id; struct armada_thermal_priv* priv; } ;
struct armada_thermal_priv {int update_lock; int interrupt_source; } ;


 int armada_read_sensor (struct armada_thermal_priv*,int*) ;
 int armada_select_channel (struct armada_thermal_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int armada_get_temp(void *_sensor, int *temp)
{
 struct armada_thermal_sensor *sensor = _sensor;
 struct armada_thermal_priv *priv = sensor->priv;
 int ret;

 mutex_lock(&priv->update_lock);


 ret = armada_select_channel(priv, sensor->id);
 if (ret)
  goto unlock_mutex;


 ret = armada_read_sensor(priv, temp);
 if (ret)
  goto unlock_mutex;





 ret = armada_select_channel(priv, priv->interrupt_source);

unlock_mutex:
 mutex_unlock(&priv->update_lock);

 return ret;
}
