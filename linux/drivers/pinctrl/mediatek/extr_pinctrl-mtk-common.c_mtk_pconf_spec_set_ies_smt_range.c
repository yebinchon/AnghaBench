
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct mtk_pin_ies_smt_set {unsigned int start; unsigned int end; unsigned char offset; int bit; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;
 int regmap_write (struct regmap*,unsigned int,unsigned int) ;

int mtk_pconf_spec_set_ies_smt_range(struct regmap *regmap,
  const struct mtk_pin_ies_smt_set *ies_smt_infos, unsigned int info_num,
  unsigned int pin, unsigned char align, int value)
{
 unsigned int i, reg_addr, bit;

 for (i = 0; i < info_num; i++) {
  if (pin >= ies_smt_infos[i].start &&
    pin <= ies_smt_infos[i].end) {
   break;
  }
 }

 if (i == info_num)
  return -EINVAL;

 if (value)
  reg_addr = ies_smt_infos[i].offset + align;
 else
  reg_addr = ies_smt_infos[i].offset + (align << 1);

 bit = BIT(ies_smt_infos[i].bit);
 regmap_write(regmap, reg_addr, bit);
 return 0;
}
