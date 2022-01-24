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
struct platform_device {int dummy; } ;
struct menf21bmc_wdt {int /*<<< orphan*/  i2c_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC_CMD_WD_OFF ; 
 int /*<<< orphan*/  BMC_WD_OFF_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct menf21bmc_wdt* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct menf21bmc_wdt *drv_data = FUNC1(pdev);

	FUNC0(drv_data->i2c_client,
				  BMC_CMD_WD_OFF, BMC_WD_OFF_VAL);
}