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
struct qcom_adsp {void* restart; int /*<<< orphan*/  dev; void* pdc_sync_reset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct qcom_adsp *adsp)
{
	adsp->pdc_sync_reset = FUNC4(adsp->dev,
			"pdc_sync");
	if (FUNC0(adsp->pdc_sync_reset)) {
		FUNC2(adsp->dev, "failed to acquire pdc_sync reset\n");
		return FUNC1(adsp->pdc_sync_reset);
	}

	adsp->restart = FUNC4(adsp->dev, "restart");

	/* Fall back to the  old "cc_lpass" if "restart" is absent */
	if (!adsp->restart)
		adsp->restart = FUNC3(adsp->dev, "cc_lpass");

	if (FUNC0(adsp->restart)) {
		FUNC2(adsp->dev, "failed to acquire restart\n");
		return FUNC1(adsp->restart);
	}

	return 0;
}