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
struct spm_driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_SLEEP_MODE_SPC ; 
 int /*<<< orphan*/  PM_SLEEP_MODE_STBY ; 
 struct spm_driver_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_spm_drv ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_pm_collapse ; 
 int /*<<< orphan*/  FUNC2 (struct spm_driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;
	struct spm_driver_data *drv = FUNC0(cpu_spm_drv);

	FUNC2(drv, PM_SLEEP_MODE_SPC);
	ret = FUNC1(0, qcom_pm_collapse);
	/*
	 * ARM common code executes WFI without calling into our driver and
	 * if the SPM mode is not reset, then we may accidently power down the
	 * cpu when we intended only to gate the cpu clock.
	 * Ensure the state is set to standby before returning.
	 */
	FUNC2(drv, PM_SLEEP_MODE_STBY);

	return ret;
}