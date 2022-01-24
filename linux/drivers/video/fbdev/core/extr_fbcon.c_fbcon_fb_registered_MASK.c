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
struct fb_info {int node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int* con2fb_map_boot ; 
 scalar_t__ deferred_takeover ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int first_fb_vc ; 
 int info_idx ; 
 int last_fb_vc ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct fb_info *info)
{
	int ret = 0, i, idx;

	FUNC0();

	idx = info->node;
	FUNC2(info);

	if (deferred_takeover) {
		FUNC3("fbcon: Deferring console take-over\n");
		return 0;
	}

	if (info_idx == -1) {
		for (i = first_fb_vc; i <= last_fb_vc; i++) {
			if (con2fb_map_boot[i] == idx) {
				info_idx = idx;
				break;
			}
		}

		if (info_idx != -1)
			ret = FUNC1(1);
	} else {
		for (i = first_fb_vc; i <= last_fb_vc; i++) {
			if (con2fb_map_boot[i] == idx)
				FUNC4(i, idx, 0);
		}
	}

	return ret;
}