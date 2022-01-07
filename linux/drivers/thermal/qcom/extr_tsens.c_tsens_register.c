
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsens_priv {int num_sensors; TYPE_1__* ops; TYPE_2__* sensor; int dev; } ;
struct thermal_zone_device {int dummy; } ;
struct TYPE_4__ {int id; struct thermal_zone_device* tzd; struct tsens_priv* priv; } ;
struct TYPE_3__ {int (* enable ) (struct tsens_priv*,int) ;} ;


 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 struct thermal_zone_device* devm_thermal_zone_of_sensor_register (int ,int,TYPE_2__*,int *) ;
 int stub1 (struct tsens_priv*,int) ;
 int tsens_of_ops ;

__attribute__((used)) static int tsens_register(struct tsens_priv *priv)
{
 int i;
 struct thermal_zone_device *tzd;

 for (i = 0; i < priv->num_sensors; i++) {
  priv->sensor[i].priv = priv;
  priv->sensor[i].id = i;
  tzd = devm_thermal_zone_of_sensor_register(priv->dev, i,
          &priv->sensor[i],
          &tsens_of_ops);
  if (IS_ERR(tzd))
   continue;
  priv->sensor[i].tzd = tzd;
  if (priv->ops->enable)
   priv->ops->enable(priv, i);
 }
 return 0;
}
