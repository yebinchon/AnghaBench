
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_info {int uA; int uV; int reg; } ;
struct qcom_mss_reg_res {int uA; int uV; scalar_t__ supply; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,scalar_t__) ;
 int devm_regulator_get (struct device*,scalar_t__) ;

__attribute__((used)) static int q6v5_regulator_init(struct device *dev, struct reg_info *regs,
          const struct qcom_mss_reg_res *reg_res)
{
 int rc;
 int i;

 if (!reg_res)
  return 0;

 for (i = 0; reg_res[i].supply; i++) {
  regs[i].reg = devm_regulator_get(dev, reg_res[i].supply);
  if (IS_ERR(regs[i].reg)) {
   rc = PTR_ERR(regs[i].reg);
   if (rc != -EPROBE_DEFER)
    dev_err(dev, "Failed to get %s\n regulator",
     reg_res[i].supply);
   return rc;
  }

  regs[i].uV = reg_res[i].uV;
  regs[i].uA = reg_res[i].uA;
 }

 return i;
}
