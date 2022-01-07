
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6524x {int lock; } ;


 int __read_reg (struct tps6524x*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int read_reg(struct tps6524x *hw, int reg)
{
 int ret;

 mutex_lock(&hw->lock);
 ret = __read_reg(hw, reg);
 mutex_unlock(&hw->lock);

 return ret;
}
