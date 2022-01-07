
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6524x {int dummy; } ;
struct field {int mask; int shift; int reg; } ;


 int EOVERFLOW ;
 int rmw_protect (struct tps6524x*,int ,int,int) ;

__attribute__((used)) static int write_field(struct tps6524x *hw, const struct field *field,
         int val)
{
 if (val & ~field->mask)
  return -EOVERFLOW;

 return rmw_protect(hw, field->reg,
        field->mask << field->shift,
        val << field->shift);
}
