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
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEMPLD_WDT_KICK ; 
 int /*<<< orphan*/  FUNC0 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct kempld_device_data*,int /*<<< orphan*/ ,char) ; 
 struct kempld_wdt_data* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct kempld_wdt_data *wdt_data = FUNC3(wdd);
	struct kempld_device_data *pld = wdt_data->pld;

	FUNC0(pld);
	FUNC2(pld, KEMPLD_WDT_KICK, 'K');
	FUNC1(pld);

	return 0;
}