
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_3__ {unsigned int pin; unsigned char pupd_offset; unsigned char r0_offset; unsigned char r1_offset; int r1_bit; int r0_bit; int pupd_bit; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;




 int regmap_write (struct regmap*,unsigned int,int ) ;
 TYPE_1__* spec_pupd ;

__attribute__((used)) static int spec_pull_set(struct regmap *regmap, unsigned int pin,
  unsigned char align, bool isup, unsigned int r1r0)
{
 unsigned int i;
 unsigned int reg_pupd, reg_set_r0, reg_set_r1;
 unsigned int reg_rst_r0, reg_rst_r1;
 bool find = 0;

 for (i = 0; i < ARRAY_SIZE(spec_pupd); i++) {
  if (pin == spec_pupd[i].pin) {
   find = 1;
   break;
  }
 }

 if (!find)
  return -EINVAL;

 if (isup)
  reg_pupd = spec_pupd[i].pupd_offset + align;
 else
  reg_pupd = spec_pupd[i].pupd_offset + (align << 1);

 regmap_write(regmap, reg_pupd, spec_pupd[i].pupd_bit);

 reg_set_r0 = spec_pupd[i].r0_offset + align;
 reg_rst_r0 = spec_pupd[i].r0_offset + (align << 1);
 reg_set_r1 = spec_pupd[i].r1_offset + align;
 reg_rst_r1 = spec_pupd[i].r1_offset + (align << 1);

 switch (r1r0) {
 case 131:
  regmap_write(regmap, reg_rst_r0, spec_pupd[i].r0_bit);
  regmap_write(regmap, reg_rst_r1, spec_pupd[i].r1_bit);
  break;
 case 130:
  regmap_write(regmap, reg_set_r0, spec_pupd[i].r0_bit);
  regmap_write(regmap, reg_rst_r1, spec_pupd[i].r1_bit);
  break;
 case 129:
  regmap_write(regmap, reg_rst_r0, spec_pupd[i].r0_bit);
  regmap_write(regmap, reg_set_r1, spec_pupd[i].r1_bit);
  break;
 case 128:
  regmap_write(regmap, reg_set_r0, spec_pupd[i].r0_bit);
  regmap_write(regmap, reg_set_r1, spec_pupd[i].r1_bit);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
