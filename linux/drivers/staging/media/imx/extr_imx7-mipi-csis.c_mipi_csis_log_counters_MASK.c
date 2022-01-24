#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct csi_state {int /*<<< orphan*/  slock; TYPE_1__* events; scalar_t__ debug; TYPE_2__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {scalar_t__ counter; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int MIPI_CSIS_NUM_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct csi_state *state, bool non_errors)
{
	int i = non_errors ? MIPI_CSIS_NUM_EVENTS : MIPI_CSIS_NUM_EVENTS - 4;
	struct device *dev = &state->pdev->dev;
	unsigned long flags;

	FUNC1(&state->slock, flags);

	for (i--; i >= 0; i--) {
		if (state->events[i].counter > 0 || state->debug)
			FUNC0(dev, "%s events: %d\n", state->events[i].name,
				 state->events[i].counter);
	}
	FUNC2(&state->slock, flags);
}