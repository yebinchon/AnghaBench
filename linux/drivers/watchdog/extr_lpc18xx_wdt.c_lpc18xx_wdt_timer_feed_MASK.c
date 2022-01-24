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
struct watchdog_device {int timeout; } ;
struct timer_list {int dummy; } ;
struct lpc18xx_wdt_dev {int /*<<< orphan*/  timer; struct watchdog_device wdt_dev; } ;

/* Variables and functions */
 int MSEC_PER_SEC ; 
 struct lpc18xx_wdt_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct lpc18xx_wdt_dev* lpc18xx_wdt ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct lpc18xx_wdt_dev *lpc18xx_wdt = FUNC0(lpc18xx_wdt, t, timer);
	struct watchdog_device *wdt_dev = &lpc18xx_wdt->wdt_dev;

	FUNC1(wdt_dev);

	/* Use safe value (1/2 of real timeout) */
	FUNC2(&lpc18xx_wdt->timer, jiffies +
		  FUNC3((wdt_dev->timeout * MSEC_PER_SEC) / 2));
}