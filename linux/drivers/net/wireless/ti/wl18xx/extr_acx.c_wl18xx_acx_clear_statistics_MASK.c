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
struct wl18xx_acx_clear_statistics {int dummy; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CLEAR_STATISTICS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl18xx_acx_clear_statistics*) ; 
 struct wl18xx_acx_clear_statistics* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_acx_clear_statistics*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl)
{
	struct wl18xx_acx_clear_statistics *acx;
	int ret = 0;

	FUNC3(DEBUG_ACX, "acx clear statistics");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC2(wl, ACX_CLEAR_STATISTICS, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("failed to clear firmware statistics: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}