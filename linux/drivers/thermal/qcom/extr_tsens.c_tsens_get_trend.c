
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsens_sensor {int id; struct tsens_priv* priv; } ;
struct tsens_priv {TYPE_1__* ops; } ;
typedef enum thermal_trend { ____Placeholder_thermal_trend } thermal_trend ;
struct TYPE_2__ {int (* get_trend ) (struct tsens_priv*,int ,int*) ;} ;


 int ENOTSUPP ;
 int stub1 (struct tsens_priv*,int ,int*) ;

__attribute__((used)) static int tsens_get_trend(void *data, int trip, enum thermal_trend *trend)
{
 const struct tsens_sensor *s = data;
 struct tsens_priv *priv = s->priv;

 if (priv->ops->get_trend)
  return priv->ops->get_trend(priv, s->id, trend);

 return -ENOTSUPP;
}
