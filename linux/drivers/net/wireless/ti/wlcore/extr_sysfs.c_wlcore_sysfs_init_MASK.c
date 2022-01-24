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
struct wl1271 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_bt_coex_state ; 
 int /*<<< orphan*/  dev_attr_hw_pg_ver ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fwlog_attr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct wl1271 *wl)
{
	int ret;

	/* Create sysfs file to control bt coex state */
	ret = FUNC1(wl->dev, &dev_attr_bt_coex_state);
	if (ret < 0) {
		FUNC3("failed to create sysfs file bt_coex_state");
		goto out;
	}

	/* Create sysfs file to get HW PG version */
	ret = FUNC1(wl->dev, &dev_attr_hw_pg_ver);
	if (ret < 0) {
		FUNC3("failed to create sysfs file hw_pg_ver");
		goto out_bt_coex_state;
	}

	/* Create sysfs file for the FW log */
	ret = FUNC0(wl->dev, &fwlog_attr);
	if (ret < 0) {
		FUNC3("failed to create sysfs file fwlog");
		goto out_hw_pg_ver;
	}

	goto out;

out_hw_pg_ver:
	FUNC2(wl->dev, &dev_attr_hw_pg_ver);

out_bt_coex_state:
	FUNC2(wl->dev, &dev_attr_bt_coex_state);

out:
	return ret;
}