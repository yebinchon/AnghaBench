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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct jz4740_wdt_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TCU_REG_WDT_TCER ; 
 int TCU_WDT_TCER_TCEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 struct jz4740_wdt_drvdata* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdt_dev)
{
	struct jz4740_wdt_drvdata *drvdata = FUNC3(wdt_dev);
	u8 tcer;

	tcer = FUNC2(drvdata->base + TCU_REG_WDT_TCER);

	FUNC0();
	FUNC1(wdt_dev, wdt_dev->timeout);

	/* Start watchdog if it wasn't started already */
	if (!(tcer & TCU_WDT_TCER_TCEN))
		FUNC4(TCU_WDT_TCER_TCEN, drvdata->base + TCU_REG_WDT_TCER);

	return 0;
}