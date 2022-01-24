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
typedef  int u32 ;
struct pmic_wrapper {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWRAP_WACS2_CMD ; 
 int /*<<< orphan*/  PWRAP_WACS2_RDATA ; 
 int /*<<< orphan*/  PWRAP_WACS2_VLDCLR ; 
 int /*<<< orphan*/  pwrap_is_fsm_idle ; 
 int /*<<< orphan*/  pwrap_is_fsm_vldclr ; 
 int /*<<< orphan*/  FUNC1 (struct pmic_wrapper*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmic_wrapper*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pmic_wrapper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pmic_wrapper*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pmic_wrapper *wrp, u32 adr, u32 *rdata)
{
	int ret;

	ret = FUNC3(wrp, pwrap_is_fsm_idle);
	if (ret) {
		FUNC1(wrp);
		return ret;
	}

	FUNC4(wrp, (adr >> 1) << 16, PWRAP_WACS2_CMD);

	ret = FUNC3(wrp, pwrap_is_fsm_vldclr);
	if (ret)
		return ret;

	*rdata = FUNC0(FUNC2(wrp, PWRAP_WACS2_RDATA));

	FUNC4(wrp, 1, PWRAP_WACS2_VLDCLR);

	return 0;
}