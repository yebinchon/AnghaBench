
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_pio_control {struct regmap_field* alt; } ;
struct regmap_field {int dummy; } ;


 int regmap_field_read (struct regmap_field*,unsigned int*) ;

__attribute__((used)) static unsigned int st_pctl_get_pin_function(struct st_pio_control *pc, int pin)
{
 struct regmap_field *alt = pc->alt;
 unsigned int val;
 int offset = pin * 4;

 if (!alt)
  return 0;

 regmap_field_read(alt, &val);

 return (val >> offset) & 0xf;
}
