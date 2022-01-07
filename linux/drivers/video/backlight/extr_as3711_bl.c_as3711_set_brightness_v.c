
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3711 {int regmap; } ;


 int EINVAL ;
 int regmap_update_bits (int ,unsigned int,int,unsigned int) ;

__attribute__((used)) static int as3711_set_brightness_v(struct as3711 *as3711,
       unsigned int brightness,
       unsigned int reg)
{
 if (brightness > 31)
  return -EINVAL;

 return regmap_update_bits(as3711->regmap, reg, 0xf0,
      brightness << 4);
}
