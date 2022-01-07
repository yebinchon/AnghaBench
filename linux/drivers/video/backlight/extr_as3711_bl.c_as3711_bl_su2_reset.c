
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct as3711_bl_supply {TYPE_1__* pdata; struct as3711* as3711; } ;
struct as3711 {int regmap; } ;
struct TYPE_2__ {int su2_fbprot; } ;


 int AS3711_STEPUP_CONTROL_2 ;
 int AS3711_STEPUP_CONTROL_5 ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int as3711_bl_su2_reset(struct as3711_bl_supply *supply)
{
 struct as3711 *as3711 = supply->as3711;
 int ret = regmap_update_bits(as3711->regmap, AS3711_STEPUP_CONTROL_5,
         3, supply->pdata->su2_fbprot);
 if (!ret)
  ret = regmap_update_bits(as3711->regmap,
      AS3711_STEPUP_CONTROL_2, 1, 0);
 if (!ret)
  ret = regmap_update_bits(as3711->regmap,
      AS3711_STEPUP_CONTROL_2, 1, 1);
 return ret;
}
