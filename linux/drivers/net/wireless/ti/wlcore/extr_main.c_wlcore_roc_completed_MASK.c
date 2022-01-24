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
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int FUNC0 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct wl1271 *wl)
{
	int ret;

	FUNC8(DEBUG_MAC80211, "roc complete");

	FUNC1(&wl->mutex);

	if (FUNC7(wl->state != WLCORE_STATE_ON)) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC3(wl->dev);
	if (ret < 0) {
		FUNC6(wl->dev);
		goto out;
	}

	ret = FUNC0(wl);

	FUNC4(wl->dev);
	FUNC5(wl->dev);
out:
	FUNC2(&wl->mutex);

	return ret;
}