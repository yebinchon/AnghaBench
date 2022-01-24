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
struct TYPE_2__ {scalar_t__ fw_stats_update; int /*<<< orphan*/  fw_stats; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_1__ stats; int /*<<< orphan*/  plt; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL1271_DEBUGFS_STATS_LIFETIME ; 
 scalar_t__ WLCORE_STATE_ON ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,int /*<<< orphan*/ ) ; 

void FUNC10(struct wl1271 *wl)
{
	int ret;

	FUNC1(&wl->mutex);

	if (FUNC8(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC3(wl->dev);
	if (ret < 0) {
		FUNC6(wl->dev);
		goto out;
	}

	if (!wl->plt &&
	    FUNC7(jiffies, wl->stats.fw_stats_update +
		       FUNC0(WL1271_DEBUGFS_STATS_LIFETIME))) {
		FUNC9(wl, wl->stats.fw_stats);
		wl->stats.fw_stats_update = jiffies;
	}

	FUNC4(wl->dev);
	FUNC5(wl->dev);

out:
	FUNC2(&wl->mutex);
}