
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6524x {int dummy; } ;
struct field {int shift; int mask; int reg; } ;


 int read_reg (struct tps6524x*,int ) ;

__attribute__((used)) static int read_field(struct tps6524x *hw, const struct field *field)
{
 int tmp;

 tmp = read_reg(hw, field->reg);
 if (tmp < 0)
  return tmp;

 return (tmp >> field->shift) & field->mask;
}
