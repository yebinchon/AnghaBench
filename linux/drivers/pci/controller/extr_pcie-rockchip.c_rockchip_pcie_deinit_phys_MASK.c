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
struct rockchip_pcie {int lanes_map; int /*<<< orphan*/ * phys; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_LANE_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct rockchip_pcie *rockchip)
{
	int i;

	for (i = 0; i < MAX_LANE_NUM; i++) {
		/* inactive lanes are already powered off */
		if (rockchip->lanes_map & FUNC0(i))
			FUNC2(rockchip->phys[i]);
		FUNC1(rockchip->phys[i]);
	}
}