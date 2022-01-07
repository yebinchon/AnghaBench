
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsens_sensor {int id; struct tsens_priv* priv; } ;
struct tsens_priv {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_temp ) (struct tsens_priv*,int ,int*) ;} ;


 int stub1 (struct tsens_priv*,int ,int*) ;

__attribute__((used)) static int tsens_get_temp(void *data, int *temp)
{
 const struct tsens_sensor *s = data;
 struct tsens_priv *priv = s->priv;

 return priv->ops->get_temp(priv, s->id, temp);
}
