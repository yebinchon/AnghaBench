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
struct watchdog_device {unsigned int timeout; } ;
struct kempld_wdt_stage {scalar_t__ mask; } ;
struct kempld_wdt_data {unsigned int pretimeout; struct kempld_wdt_stage* stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_RESET ; 
 size_t STAGE_PRETIMEOUT ; 
 size_t STAGE_TIMEOUT ; 
 int FUNC0 (struct kempld_wdt_data*,struct kempld_wdt_stage*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kempld_wdt_data*,struct kempld_wdt_stage*,unsigned int) ; 
 struct kempld_wdt_data* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd,
					unsigned int timeout)
{
	struct kempld_wdt_data *wdt_data = FUNC2(wdd);
	struct kempld_wdt_stage *pretimeout_stage;
	struct kempld_wdt_stage *timeout_stage;
	int ret;

	timeout_stage = &wdt_data->stage[STAGE_TIMEOUT];
	pretimeout_stage = &wdt_data->stage[STAGE_PRETIMEOUT];

	if (pretimeout_stage->mask && wdt_data->pretimeout > 0)
		timeout = wdt_data->pretimeout;

	ret = FUNC0(wdt_data, timeout_stage,
						ACTION_RESET);
	if (ret)
		return ret;
	ret = FUNC1(wdt_data, timeout_stage,
						timeout);
	if (ret)
		return ret;

	wdd->timeout = timeout;
	return 0;
}