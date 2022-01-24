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
typedef  int u8 ;
typedef  int u32 ;
struct watchdog_device {int dummy; } ;
struct kempld_wdt_stage {int mask; int id; } ;
struct kempld_wdt_data {struct kempld_wdt_stage* stage; struct kempld_device_data* pld; } ;
struct kempld_device_data {int feature_mask; } ;

/* Variables and functions */
 int ENODEV ; 
 int KEMPLD_FEATURE_BIT_NMI ; 
 int FUNC0 (int) ; 
 size_t STAGE_PRETIMEOUT ; 
 size_t STAGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct kempld_device_data*) ; 
 int FUNC2 (struct kempld_device_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*,int,int) ; 
 struct kempld_wdt_data* FUNC5 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdd)
{
	struct kempld_wdt_data *wdt_data = FUNC5(wdd);
	struct kempld_device_data *pld = wdt_data->pld;
	struct kempld_wdt_stage *pretimeout_stage;
	struct kempld_wdt_stage *timeout_stage;
	u8 index, data, data_orig;
	u32 mask;
	int i, j;

	pretimeout_stage = &wdt_data->stage[STAGE_PRETIMEOUT];
	timeout_stage = &wdt_data->stage[STAGE_TIMEOUT];

	pretimeout_stage->mask = 0;
	timeout_stage->mask = 0;

	for (i = 0; i < 3; i++) {
		index = FUNC0(i);
		mask = 0;

		FUNC1(pld);
		/* Probe each byte individually. */
		for (j = 0; j < 4; j++) {
			data_orig = FUNC2(pld, index + j);
			FUNC4(pld, index + j, 0x00);
			data = FUNC2(pld, index + j);
			/* A failed write means this byte is reserved */
			if (data != 0x00)
				break;
			FUNC4(pld, index + j, data_orig);
			mask |= 0xff << (j * 8);
		}
		FUNC3(pld);

		/* Assign available stages to timeout and pretimeout */
		if (!timeout_stage->mask) {
			timeout_stage->mask = mask;
			timeout_stage->id = i;
		} else {
			if (pld->feature_mask & KEMPLD_FEATURE_BIT_NMI) {
				pretimeout_stage->mask = timeout_stage->mask;
				timeout_stage->mask = mask;
				pretimeout_stage->id = timeout_stage->id;
				timeout_stage->id = i;
			}
			break;
		}
	}

	if (!timeout_stage->mask)
		return -ENODEV;

	return 0;
}