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
typedef  unsigned short u16 ;
struct watchdog_device {unsigned int timeout; } ;
struct jz4740_wdt_drvdata {scalar_t__ base; int /*<<< orphan*/  rtc_clk; } ;

/* Variables and functions */
 unsigned short JZ_WDT_CLOCK_DIV_1 ; 
 unsigned short JZ_WDT_CLOCK_DIV_1024 ; 
 unsigned short JZ_WDT_CLOCK_RTC ; 
 scalar_t__ TCU_REG_WDT_TCER ; 
 scalar_t__ TCU_REG_WDT_TCNT ; 
 scalar_t__ TCU_REG_WDT_TCSR ; 
 scalar_t__ TCU_REG_WDT_TDR ; 
 int TCU_TCSR_PRESCALE_LSB ; 
 int TCU_WDT_TCER_TCEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct jz4740_wdt_drvdata* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdt_dev,
				    unsigned int new_timeout)
{
	struct jz4740_wdt_drvdata *drvdata = FUNC2(wdt_dev);
	unsigned int rtc_clk_rate;
	unsigned int timeout_value;
	unsigned short clock_div = JZ_WDT_CLOCK_DIV_1;
	u8 tcer;

	rtc_clk_rate = FUNC0(drvdata->rtc_clk);

	timeout_value = rtc_clk_rate * new_timeout;
	while (timeout_value > 0xffff) {
		if (clock_div == JZ_WDT_CLOCK_DIV_1024) {
			/* Requested timeout too high;
			* use highest possible value. */
			timeout_value = 0xffff;
			break;
		}
		timeout_value >>= 2;
		clock_div += (1 << TCU_TCSR_PRESCALE_LSB);
	}

	tcer = FUNC1(drvdata->base + TCU_REG_WDT_TCER);
	FUNC3(0x0, drvdata->base + TCU_REG_WDT_TCER);
	FUNC4(clock_div, drvdata->base + TCU_REG_WDT_TCSR);

	FUNC4((u16)timeout_value, drvdata->base + TCU_REG_WDT_TDR);
	FUNC4(0x0, drvdata->base + TCU_REG_WDT_TCNT);
	FUNC4(clock_div | JZ_WDT_CLOCK_RTC, drvdata->base + TCU_REG_WDT_TCSR);

	if (tcer & TCU_WDT_TCER_TCEN)
		FUNC3(TCU_WDT_TCER_TCEN, drvdata->base + TCU_REG_WDT_TCER);

	wdt_dev->timeout = new_timeout;
	return 0;
}