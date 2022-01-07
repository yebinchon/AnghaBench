
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_info {scalar_t__ uV; scalar_t__ uA; int reg; } ;
struct q6v5 {int dev; } ;


 int INT_MAX ;
 int dev_err (int ,char*,...) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_set_load (int ,scalar_t__) ;
 int regulator_set_voltage (int ,scalar_t__,int ) ;

__attribute__((used)) static int q6v5_regulator_enable(struct q6v5 *qproc,
     struct reg_info *regs, int count)
{
 int ret;
 int i;

 for (i = 0; i < count; i++) {
  if (regs[i].uV > 0) {
   ret = regulator_set_voltage(regs[i].reg,
     regs[i].uV, INT_MAX);
   if (ret) {
    dev_err(qproc->dev,
     "Failed to request voltage for %d.\n",
      i);
    goto err;
   }
  }

  if (regs[i].uA > 0) {
   ret = regulator_set_load(regs[i].reg,
       regs[i].uA);
   if (ret < 0) {
    dev_err(qproc->dev,
     "Failed to set regulator mode\n");
    goto err;
   }
  }

  ret = regulator_enable(regs[i].reg);
  if (ret) {
   dev_err(qproc->dev, "Regulator enable failed\n");
   goto err;
  }
 }

 return 0;
err:
 for (; i >= 0; i--) {
  if (regs[i].uV > 0)
   regulator_set_voltage(regs[i].reg, 0, INT_MAX);

  if (regs[i].uA > 0)
   regulator_set_load(regs[i].reg, 0);

  regulator_disable(regs[i].reg);
 }

 return ret;
}
