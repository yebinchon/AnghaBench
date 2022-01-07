
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tps6586x_regulator {scalar_t__* enable_reg; int* enable_bit; } ;
struct device {int dummy; } ;


 int tps6586x_clr_bits (struct device*,scalar_t__,int) ;
 int tps6586x_read (struct device*,scalar_t__,int*) ;
 int tps6586x_set_bits (struct device*,scalar_t__,int) ;

__attribute__((used)) static inline int tps6586x_regulator_preinit(struct device *parent,
          struct tps6586x_regulator *ri)
{
 uint8_t val1, val2;
 int ret;

 if (ri->enable_reg[0] == ri->enable_reg[1] &&
     ri->enable_bit[0] == ri->enable_bit[1])
   return 0;

 ret = tps6586x_read(parent, ri->enable_reg[0], &val1);
 if (ret)
  return ret;

 ret = tps6586x_read(parent, ri->enable_reg[1], &val2);
 if (ret)
  return ret;

 if (!(val2 & (1 << ri->enable_bit[1])))
  return 0;





 if (!(val1 & (1 << ri->enable_bit[0]))) {
  ret = tps6586x_set_bits(parent, ri->enable_reg[0],
     1 << ri->enable_bit[0]);
  if (ret)
   return ret;
 }

 return tps6586x_clr_bits(parent, ri->enable_reg[1],
     1 << ri->enable_bit[1]);
}
