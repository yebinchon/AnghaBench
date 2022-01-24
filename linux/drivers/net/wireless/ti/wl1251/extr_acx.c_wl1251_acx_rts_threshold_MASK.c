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
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int dummy; } ;
struct acx_rts_threshold {int /*<<< orphan*/  threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_RTS_THRESHOLD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_rts_threshold*) ; 
 struct acx_rts_threshold* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_rts_threshold*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, u16 rts_threshold)
{
	struct acx_rts_threshold *rts;
	int ret;

	FUNC3(DEBUG_ACX, "acx rts threshold");

	rts = FUNC1(sizeof(*rts), GFP_KERNEL);
	if (!rts)
		return -ENOMEM;

	rts->threshold = rts_threshold;

	ret = FUNC2(wl, DOT11_RTS_THRESHOLD, rts, sizeof(*rts));
	if (ret < 0) {
		FUNC4("failed to set rts threshold: %d", ret);
		goto out;
	}

out:
	FUNC0(rts);
	return ret;
}