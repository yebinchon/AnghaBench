#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s3c2410_wdt {TYPE_1__* drv_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  pmureg; } ;
struct TYPE_2__ {int quirks; int /*<<< orphan*/  rst_stat_bit; int /*<<< orphan*/  rst_stat_reg; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int QUIRK_HAS_RST_STAT ; 
 unsigned int WDIOF_CARDRESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct s3c2410_wdt *wdt)
{
	unsigned int rst_stat;
	int ret;

	if (!(wdt->drv_data->quirks & QUIRK_HAS_RST_STAT))
		return 0;

	ret = FUNC2(wdt->pmureg, wdt->drv_data->rst_stat_reg, &rst_stat);
	if (ret)
		FUNC1(wdt->dev, "Couldn't get RST_STAT register\n");
	else if (rst_stat & FUNC0(wdt->drv_data->rst_stat_bit))
		return WDIOF_CARDRESET;

	return 0;
}