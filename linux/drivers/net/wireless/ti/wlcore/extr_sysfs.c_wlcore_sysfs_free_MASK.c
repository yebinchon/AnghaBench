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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fwlog_attr ; 

void FUNC2(struct wl1271 *wl)
{
	FUNC0(wl->dev, &fwlog_attr);

	FUNC1(wl->dev, &dev_attr_hw_pg_ver);

	FUNC1(wl->dev, &dev_attr_bt_coex_state);
}