
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct tsens_sensor {size_t hw_id; } ;
struct tsens_priv {TYPE_2__* fields; TYPE_1__* feat; int * rf; struct tsens_sensor* sensor; } ;
struct TYPE_4__ {int lsb; int msb; } ;
struct TYPE_3__ {scalar_t__ adc; } ;


 size_t GENMASK (int ,int ) ;
 size_t LAST_TEMP_0 ;
 size_t VALID_0 ;
 int code_to_degc (size_t,struct tsens_sensor*) ;
 scalar_t__ fls (size_t) ;
 int ndelay (int) ;
 int regmap_field_read (int ,size_t*) ;
 int sign_extend32 (size_t,scalar_t__) ;

int get_temp_tsens_valid(struct tsens_priv *priv, int i, int *temp)
{
 struct tsens_sensor *s = &priv->sensor[i];
 u32 temp_idx = LAST_TEMP_0 + s->hw_id;
 u32 valid_idx = VALID_0 + s->hw_id;
 u32 last_temp = 0, valid, mask;
 int ret;

 ret = regmap_field_read(priv->rf[valid_idx], &valid);
 if (ret)
  return ret;
 while (!valid) {




  ndelay(400);
  ret = regmap_field_read(priv->rf[valid_idx], &valid);
  if (ret)
   return ret;
 }


 ret = regmap_field_read(priv->rf[temp_idx], &last_temp);
 if (ret)
  return ret;

 if (priv->feat->adc) {

  *temp = code_to_degc(last_temp, s) * 1000;
 } else {
  mask = GENMASK(priv->fields[LAST_TEMP_0].msb,
          priv->fields[LAST_TEMP_0].lsb);

  *temp = sign_extend32(last_temp, fls(mask) - 1) * 100;
 }

 return 0;
}
