
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_3__ {unsigned int pin; int offset; int bit; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 unsigned int BIT (int ) ;
 TYPE_1__* mt2701_spec_pinmux ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void mt2701_spec_pinmux_set(struct regmap *reg, unsigned int pin,
   unsigned int mode)
{
 unsigned int i, value, mask;
 unsigned int info_num = ARRAY_SIZE(mt2701_spec_pinmux);
 unsigned int spec_flag;

 for (i = 0; i < info_num; i++) {
  if (pin == mt2701_spec_pinmux[i].pin)
   break;
 }

 if (i == info_num)
  return;

 spec_flag = (mode >> 3);
 mask = BIT(mt2701_spec_pinmux[i].bit);
 if (!spec_flag)
  value = mask;
 else
  value = 0;
 regmap_update_bits(reg, mt2701_spec_pinmux[i].offset, mask, value);
}
