#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tegra_xusb_pad {scalar_t__* lanes; TYPE_1__* soc; } ;
struct tegra_xusb_lane {int dummy; } ;
struct TYPE_2__ {unsigned int num_lanes; } ;

/* Variables and functions */
 struct tegra_xusb_lane* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_xusb_lane*) ; 

__attribute__((used)) static void FUNC2(struct tegra_xusb_pad *pad)
{
	unsigned int i;

	for (i = 0; i < pad->soc->num_lanes; i++) {
		struct tegra_xusb_lane *lane;

		if (pad->lanes[i]) {
			lane = FUNC0(pad->lanes[i]);
			FUNC1(lane);
		}
	}
}