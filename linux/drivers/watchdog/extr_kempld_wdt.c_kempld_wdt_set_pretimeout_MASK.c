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
typedef  int /*<<< orphan*/  u8 ;
struct watchdog_device {unsigned int timeout; } ;
struct kempld_wdt_stage {int /*<<< orphan*/  mask; } ;
struct kempld_wdt_data {unsigned int pretimeout; struct kempld_wdt_stage* stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_NMI ; 
 int /*<<< orphan*/  ACTION_NONE ; 
 int EINVAL ; 
 int ENXIO ; 
 size_t STAGE_PRETIMEOUT ; 
 int FUNC0 (struct kempld_wdt_data*,struct kempld_wdt_stage*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kempld_wdt_data*,struct kempld_wdt_stage*,unsigned int) ; 
 struct kempld_wdt_data* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd,
					unsigned int pretimeout)
{
	struct kempld_wdt_data *wdt_data = FUNC2(wdd);
	struct kempld_wdt_stage *pretimeout_stage;
	u8 action = ACTION_NONE;
	int ret;

	pretimeout_stage = &wdt_data->stage[STAGE_PRETIMEOUT];

	if (!pretimeout_stage->mask)
		return -ENXIO;

	if (pretimeout > wdd->timeout)
		return -EINVAL;

	if (pretimeout > 0)
		action = ACTION_NMI;

	ret = FUNC0(wdt_data, pretimeout_stage,
						action);
	if (ret)
		return ret;
	ret = FUNC1(wdt_data, pretimeout_stage,
						wdd->timeout - pretimeout);
	if (ret)
		return ret;

	wdt_data->pretimeout = pretimeout;
	return 0;
}