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
typedef  int /*<<< orphan*/  u8 ;
struct wl1271 {int /*<<< orphan*/  roc_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WL12XX_MAX_ROLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 

int FUNC6(struct wl1271 *wl, u8 role_id)
{
	int ret = 0;

	if (FUNC0(!FUNC3(role_id, wl->roc_map)))
		return 0;

	ret = FUNC4(wl, role_id);
	if (ret < 0)
		goto out;

	FUNC1(role_id, wl->roc_map);

	/*
	 * Rearm the tx watchdog when removing the last ROC. This prevents
	 * recoveries due to just finished ROCs - when Tx hasn't yet had
	 * a chance to get out.
	 */
	if (FUNC2(wl->roc_map, WL12XX_MAX_ROLES) >= WL12XX_MAX_ROLES)
		FUNC5(wl);
out:
	return ret;
}