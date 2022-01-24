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
struct pm2xxx_charger {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PM2XXX_INT3_ITAUTOTIMEOUTWD ; 
 int PM2XXX_INT3_ITCHCCWD ; 
 int PM2XXX_INT3_ITCHCVWD ; 
 int PM2XXX_INT3_ITCHPRECHARGEWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct pm2xxx_charger*,int) ; 

__attribute__((used)) static int FUNC2(void *pm2_data, int val)
{
	struct pm2xxx_charger *pm2 = pm2_data;
	int ret = 0;

	if (val & PM2XXX_INT3_ITAUTOTIMEOUTWD)
		ret = FUNC1(pm2, val);

	if (val & (PM2XXX_INT3_ITCHPRECHARGEWD |
				PM2XXX_INT3_ITCHCCWD | PM2XXX_INT3_ITCHCVWD)) {
		FUNC0(pm2->dev,
			"Watchdog occurred for precharge, CC and CV charge\n");
	}

	return ret;
}