#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int pos; scalar_t__ pol; } ;
struct TYPE_6__ {TYPE_2__ clk; TYPE_1__* data; } ;
struct iss_csiphy {unsigned int max_data_lanes; int /*<<< orphan*/  cfg_regs; int /*<<< orphan*/  iss; TYPE_3__ lanes; } ;
struct TYPE_4__ {int pos; scalar_t__ pol; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI2_COMPLEXIO_CFG ; 
 int CSI2_COMPLEXIO_CFG_CLOCK_POL ; 
 int CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK ; 
 int CSI2_COMPLEXIO_CFG_CLOCK_POSITION_SHIFT ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct iss_csiphy *phy)
{
	unsigned int i;
	u32 reg;

	reg = FUNC3(phy->iss, phy->cfg_regs, CSI2_COMPLEXIO_CFG);

	for (i = 0; i < phy->max_data_lanes; i++) {
		reg &= ~(FUNC0(i + 1) |
			 FUNC1(i + 1));
		reg |= (phy->lanes.data[i].pol ?
			FUNC0(i + 1) : 0);
		reg |= (phy->lanes.data[i].pos <<
			FUNC2(i + 1));
	}

	reg &= ~(CSI2_COMPLEXIO_CFG_CLOCK_POL |
		 CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK);
	reg |= phy->lanes.clk.pol ? CSI2_COMPLEXIO_CFG_CLOCK_POL : 0;
	reg |= phy->lanes.clk.pos << CSI2_COMPLEXIO_CFG_CLOCK_POSITION_SHIFT;

	FUNC4(phy->iss, phy->cfg_regs, CSI2_COMPLEXIO_CFG, reg);
}