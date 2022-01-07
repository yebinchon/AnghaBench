
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6524x {int lock; int dev; } ;


 int REG_WRITE_ENABLE ;
 int __rmw_reg (struct tps6524x*,int,int,int) ;
 int __write_reg (struct tps6524x*,int ,int) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rmw_protect(struct tps6524x *hw, int reg, int mask, int val)
{
 int ret;

 mutex_lock(&hw->lock);

 ret = __write_reg(hw, REG_WRITE_ENABLE, 1);
 if (ret) {
  dev_err(hw->dev, "failed to set write enable\n");
  goto error;
 }

 ret = __rmw_reg(hw, reg, mask, val);
 if (ret)
  dev_err(hw->dev, "failed to rmw register %d\n", reg);

 ret = __write_reg(hw, REG_WRITE_ENABLE, 0);
 if (ret) {
  dev_err(hw->dev, "failed to clear write enable\n");
  goto error;
 }

error:
 mutex_unlock(&hw->lock);

 return ret;
}
