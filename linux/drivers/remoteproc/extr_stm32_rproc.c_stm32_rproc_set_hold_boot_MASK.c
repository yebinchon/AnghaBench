#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stm32_syscon {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; int /*<<< orphan*/  map; } ;
struct stm32_rproc {scalar_t__ secured_soc; struct stm32_syscon hold_boot; } ;
struct rproc {int /*<<< orphan*/  dev; struct stm32_rproc* priv; } ;
struct arm_smccc_res {int a0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HAVE_ARM_SMCCC ; 
 int HOLD_BOOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RELEASE_BOOT ; 
 int /*<<< orphan*/  STM32_SMC_RCC ; 
 int /*<<< orphan*/  STM32_SMC_REG_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct rproc *rproc, bool hold)
{
	struct stm32_rproc *ddata = rproc->priv;
	struct stm32_syscon hold_boot = ddata->hold_boot;
	struct arm_smccc_res smc_res;
	int val, err;

	val = hold ? HOLD_BOOT : RELEASE_BOOT;

	if (FUNC0(CONFIG_HAVE_ARM_SMCCC) && ddata->secured_soc) {
		FUNC1(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
			      hold_boot.reg, val, 0, 0, 0, 0, &smc_res);
		err = smc_res.a0;
	} else {
		err = FUNC3(hold_boot.map, hold_boot.reg,
					 hold_boot.mask, val);
	}

	if (err)
		FUNC2(&rproc->dev, "failed to set hold boot\n");

	return err;
}