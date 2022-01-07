
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6524x {int dummy; } ;


 int __read_reg (struct tps6524x*,int) ;
 int __write_reg (struct tps6524x*,int,int) ;

__attribute__((used)) static int __rmw_reg(struct tps6524x *hw, int reg, int mask, int val)
{
 int ret;

 ret = __read_reg(hw, reg);
 if (ret < 0)
  return ret;

 ret &= ~mask;
 ret |= val;

 ret = __write_reg(hw, reg, ret);

 return (ret < 0) ? ret : 0;
}
