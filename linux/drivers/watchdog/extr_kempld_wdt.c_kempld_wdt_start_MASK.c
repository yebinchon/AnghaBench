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
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  KEMPLD_WDT_CFG ; 
 int KEMPLD_WDT_CFG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct kempld_device_data*) ; 
 int FUNC1 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kempld_device_data*) ; 
 int FUNC3 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*,int /*<<< orphan*/ ,int) ; 
 struct kempld_wdt_data* FUNC5 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdd)
{
	struct kempld_wdt_data *wdt_data = FUNC5(wdd);
	struct kempld_device_data *pld = wdt_data->pld;
	u8 status;
	int ret;

	ret = FUNC3(wdd, wdd->timeout);
	if (ret)
		return ret;

	FUNC0(pld);
	status = FUNC1(pld, KEMPLD_WDT_CFG);
	status |= KEMPLD_WDT_CFG_ENABLE;
	FUNC4(pld, KEMPLD_WDT_CFG, status);
	status = FUNC1(pld, KEMPLD_WDT_CFG);
	FUNC2(pld);

	/* Check if the watchdog was enabled */
	if (!(status & KEMPLD_WDT_CFG_ENABLE))
		return -EACCES;

	return 0;
}