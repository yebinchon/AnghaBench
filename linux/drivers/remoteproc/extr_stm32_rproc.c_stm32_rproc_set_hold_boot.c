
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_syscon {int mask; int reg; int map; } ;
struct stm32_rproc {scalar_t__ secured_soc; struct stm32_syscon hold_boot; } ;
struct rproc {int dev; struct stm32_rproc* priv; } ;
struct arm_smccc_res {int a0; } ;


 int CONFIG_HAVE_ARM_SMCCC ;
 int HOLD_BOOT ;
 scalar_t__ IS_ENABLED (int ) ;
 int RELEASE_BOOT ;
 int STM32_SMC_RCC ;
 int STM32_SMC_REG_WRITE ;
 int arm_smccc_smc (int ,int ,int ,int,int ,int ,int ,int ,struct arm_smccc_res*) ;
 int dev_err (int *,char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
{
 struct stm32_rproc *ddata = rproc->priv;
 struct stm32_syscon hold_boot = ddata->hold_boot;
 struct arm_smccc_res smc_res;
 int val, err;

 val = hold ? HOLD_BOOT : RELEASE_BOOT;

 if (IS_ENABLED(CONFIG_HAVE_ARM_SMCCC) && ddata->secured_soc) {
  arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
         hold_boot.reg, val, 0, 0, 0, 0, &smc_res);
  err = smc_res.a0;
 } else {
  err = regmap_update_bits(hold_boot.map, hold_boot.reg,
      hold_boot.mask, val);
 }

 if (err)
  dev_err(&rproc->dev, "failed to set hold boot\n");

 return err;
}
