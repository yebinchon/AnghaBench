#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ab8500_fg_cap_scaling {int enable; int* cap_to_scale; int disable_cap_level; } ;
struct TYPE_8__ {int prev_percent; struct ab8500_fg_cap_scaling cap_scale; } ;
struct TYPE_7__ {scalar_t__ fully_charged; scalar_t__ charging; } ;
struct ab8500_fg {int /*<<< orphan*/  dev; TYPE_4__ bat_cap; TYPE_3__ flags; TYPE_2__* bm; } ;
struct TYPE_6__ {TYPE_1__* fg_params; } ;
struct TYPE_5__ {int /*<<< orphan*/  maint_thres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ab8500_fg *di)
{
	struct ab8500_fg_cap_scaling *cs = &di->bat_cap.cap_scale;
	int capacity = di->bat_cap.prev_percent;

	if (!cs->enable)
		return capacity;

	/*
	 * As long as we are in fully charge mode scale the capacity
	 * to show 100%.
	 */
	if (di->flags.fully_charged) {
		cs->cap_to_scale[0] = 100;
		cs->cap_to_scale[1] =
			FUNC2(capacity, di->bm->fg_params->maint_thres);
		FUNC1(di->dev, "Scale cap with %d/%d\n",
			 cs->cap_to_scale[0], cs->cap_to_scale[1]);
	}

	/* Calculates the scaled capacity. */
	if ((cs->cap_to_scale[0] != cs->cap_to_scale[1])
					&& (cs->cap_to_scale[1] > 0))
		capacity = FUNC3(100,
				 FUNC0(di->bat_cap.prev_percent *
						 cs->cap_to_scale[0],
						 cs->cap_to_scale[1]));

	if (di->flags.charging) {
		if (capacity < cs->disable_cap_level) {
			cs->disable_cap_level = capacity;
			FUNC1(di->dev, "Cap to stop scale lowered %d%%\n",
				cs->disable_cap_level);
		} else if (!di->flags.fully_charged) {
			if (di->bat_cap.prev_percent >=
			    cs->disable_cap_level) {
				FUNC1(di->dev, "Disabling scaled capacity\n");
				cs->enable = false;
				capacity = di->bat_cap.prev_percent;
			} else {
				FUNC1(di->dev,
					"Waiting in cap to level %d%%\n",
					cs->disable_cap_level);
				capacity = cs->disable_cap_level;
			}
		}
	}

	return capacity;
}