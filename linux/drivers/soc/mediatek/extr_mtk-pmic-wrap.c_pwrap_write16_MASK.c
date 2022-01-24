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
 int /*<<< orphan*/  PWRAP_WACS2_CMD ; 
 int /*<<< orphan*/  pwrap_is_fsm_idle ; 
 int /*<<< orphan*/  FUNC0 (struct pmic_wrapper*) ; 
 int FUNC1 (struct pmic_wrapper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmic_wrapper*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pmic_wrapper *wrp, u32 adr, u32 wdata)
{
	int ret;

	ret = FUNC1(wrp, pwrap_is_fsm_idle);
	if (ret) {
		FUNC0(wrp);
		return ret;
	}

	FUNC2(wrp, (1 << 31) | ((adr >> 1) << 16) | wdata,
		     PWRAP_WACS2_CMD);

	return 0;
}