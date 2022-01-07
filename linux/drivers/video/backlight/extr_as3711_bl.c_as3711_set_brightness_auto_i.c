
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3711_bl_supply {struct as3711_bl_pdata* pdata; struct as3711* as3711; } ;
struct as3711_bl_pdata {scalar_t__ su2_auto_curr3; scalar_t__ su2_auto_curr2; scalar_t__ su2_auto_curr1; } ;
struct as3711_bl_data {int dummy; } ;
struct as3711 {int regmap; } ;


 int AS3711_CURR1_VALUE ;
 int AS3711_CURR2_VALUE ;
 int AS3711_CURR3_VALUE ;
 int regmap_write (int ,int ,unsigned int) ;
 struct as3711_bl_supply* to_supply (struct as3711_bl_data*) ;

__attribute__((used)) static int as3711_set_brightness_auto_i(struct as3711_bl_data *data,
     unsigned int brightness)
{
 struct as3711_bl_supply *supply = to_supply(data);
 struct as3711 *as3711 = supply->as3711;
 const struct as3711_bl_pdata *pdata = supply->pdata;
 int ret = 0;


 if (pdata->su2_auto_curr1)
  ret = regmap_write(as3711->regmap, AS3711_CURR1_VALUE,
       brightness);
 if (!ret && pdata->su2_auto_curr2)
  ret = regmap_write(as3711->regmap, AS3711_CURR2_VALUE,
       brightness);
 if (!ret && pdata->su2_auto_curr3)
  ret = regmap_write(as3711->regmap, AS3711_CURR3_VALUE,
       brightness);

 return ret;
}
