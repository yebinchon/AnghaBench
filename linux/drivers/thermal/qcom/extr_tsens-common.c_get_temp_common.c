
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsens_sensor {size_t hw_id; } ;
struct tsens_priv {int * rf; struct tsens_sensor* sensor; } ;


 size_t LAST_TEMP_0 ;
 int code_to_degc (int,struct tsens_sensor*) ;
 int regmap_field_read (int ,int*) ;

int get_temp_common(struct tsens_priv *priv, int i, int *temp)
{
 struct tsens_sensor *s = &priv->sensor[i];
 int last_temp = 0, ret;

 ret = regmap_field_read(priv->rf[LAST_TEMP_0 + s->hw_id], &last_temp);
 if (ret)
  return ret;

 *temp = code_to_degc(last_temp, s) * 1000;

 return 0;
}
