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
struct wl1271 {int quirks; scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int WLCORE_QUIRK_REGDOMAIN_CONF ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 
 int FUNC7 (struct wl1271*) ; 

void FUNC8(struct wl1271 *wl)
{
	int ret;

	if (!(wl->quirks & WLCORE_QUIRK_REGDOMAIN_CONF))
		return;

	FUNC0(&wl->mutex);

	if (FUNC5(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC2(wl->dev);
	if (ret < 0)
		goto out;

	ret = FUNC7(wl);
	if (ret < 0) {
		FUNC6(wl);
		goto out;
	}

	FUNC3(wl->dev);
	FUNC4(wl->dev);
out:
	FUNC1(&wl->mutex);
}