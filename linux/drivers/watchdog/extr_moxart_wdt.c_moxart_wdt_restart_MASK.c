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
struct watchdog_device {int dummy; } ;
struct moxart_wdt_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ REG_COUNT ; 
 scalar_t__ REG_ENABLE ; 
 scalar_t__ REG_MODE ; 
 struct moxart_wdt_dev* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdt_dev,
			      unsigned long action, void *data)
{
	struct moxart_wdt_dev *moxart_wdt = FUNC0(wdt_dev);

	FUNC1(1, moxart_wdt->base + REG_COUNT);
	FUNC1(0x5ab9, moxart_wdt->base + REG_MODE);
	FUNC1(0x03, moxart_wdt->base + REG_ENABLE);

	return 0;
}