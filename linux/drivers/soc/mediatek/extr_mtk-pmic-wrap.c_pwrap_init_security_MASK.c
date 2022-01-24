#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pmic_wrapper {TYPE_2__* master; TYPE_1__* slave; } ;
struct TYPE_4__ {int arb_en_all; } ;
struct TYPE_3__ {int* dew_regs; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  PWRAP_CRC_EN ; 
 size_t PWRAP_DEW_CRC_EN ; 
 size_t PWRAP_DEW_CRC_VAL ; 
 int /*<<< orphan*/  PWRAP_HIPRIO_ARB_EN ; 
 int /*<<< orphan*/  PWRAP_SIG_ADR ; 
 int /*<<< orphan*/  PWRAP_SIG_MODE ; 
 int FUNC0 (struct pmic_wrapper*) ; 
 scalar_t__ FUNC1 (struct pmic_wrapper*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pmic_wrapper*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pmic_wrapper *wrp)
{
	int ret;

	/* Enable encryption */
	ret = FUNC0(wrp);
	if (ret)
		return ret;

	/* Signature checking - using CRC */
	if (FUNC1(wrp,
			wrp->slave->dew_regs[PWRAP_DEW_CRC_EN], 0x1))
		return -EFAULT;

	FUNC2(wrp, 0x1, PWRAP_CRC_EN);
	FUNC2(wrp, 0x0, PWRAP_SIG_MODE);
	FUNC2(wrp, wrp->slave->dew_regs[PWRAP_DEW_CRC_VAL],
		     PWRAP_SIG_ADR);
	FUNC2(wrp,
		     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);

	return 0;
}