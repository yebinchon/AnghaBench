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
struct wl1271 {int /*<<< orphan*/ * ptable; } ;

/* Variables and functions */
 size_t PART_BOOT ; 
 int /*<<< orphan*/  WL1271_POWER_ON_SLEEP ; 
 int /*<<< orphan*/  WL1271_PRE_POWER_ON_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*) ; 
 int FUNC4 (struct wl1271*) ; 
 int FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct wl1271 *wl)
{
	int ret;

	FUNC0(WL1271_PRE_POWER_ON_SLEEP);
	ret = FUNC4(wl);
	if (ret < 0)
		goto out;
	FUNC0(WL1271_POWER_ON_SLEEP);
	FUNC2(wl);
	FUNC1(wl);

	ret = FUNC6(wl, &wl->ptable[PART_BOOT]);
	if (ret < 0)
		goto fail;

	/* ELP module wake up */
	ret = FUNC5(wl);
	if (ret < 0)
		goto fail;

out:
	return ret;

fail:
	FUNC3(wl);
	return ret;
}