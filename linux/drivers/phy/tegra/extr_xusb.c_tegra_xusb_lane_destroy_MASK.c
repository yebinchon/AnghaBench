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
struct tegra_xusb_lane {TYPE_2__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* remove ) (struct tegra_xusb_lane*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phy*) ; 
 struct tegra_xusb_lane* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xusb_lane*) ; 

__attribute__((used)) static void FUNC3(struct phy *phy)
{
	if (phy) {
		struct tegra_xusb_lane *lane = FUNC1(phy);

		lane->pad->ops->remove(lane);
		FUNC0(phy);
	}
}