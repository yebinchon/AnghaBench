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
struct watchdog_device {int dummy; } ;
struct TYPE_2__ {unsigned int timeout; } ;
struct lpc18xx_wdt_dev {TYPE_1__ wdt_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpc18xx_wdt_dev*) ; 
 struct lpc18xx_wdt_dev* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdt_dev,
				   unsigned int new_timeout)
{
	struct lpc18xx_wdt_dev *lpc18xx_wdt = FUNC1(wdt_dev);

	lpc18xx_wdt->wdt_dev.timeout = new_timeout;
	FUNC0(lpc18xx_wdt);

	return 0;
}