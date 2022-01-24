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
struct tx4939rtc_plat_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  rtcreg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int TX4939_RTCCTL_ALME ; 
 int TX4939_RTCCTL_COMMAND_NOP ; 
 struct tx4939rtc_plat_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enabled)
{
	struct tx4939rtc_plat_data *pdata = FUNC0(dev);

	FUNC1(&pdata->lock);
	FUNC3(pdata->rtcreg,
		       TX4939_RTCCTL_COMMAND_NOP |
		       (enabled ? TX4939_RTCCTL_ALME : 0));
	FUNC2(&pdata->lock);
	return 0;
}