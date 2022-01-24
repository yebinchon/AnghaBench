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
struct wl1251 {int dummy; } ;
struct acx_statistics {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_STATISTICS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ,struct acx_statistics*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int FUNC3(struct wl1251 *wl, struct acx_statistics *stats)
{
	int ret;

	FUNC1(DEBUG_ACX, "acx statistics");

	ret = FUNC0(wl, ACX_STATISTICS, stats,
				     sizeof(*stats));
	if (ret < 0) {
		FUNC2("acx statistics failed: %d", ret);
		return -ENOMEM;
	}

	return 0;
}