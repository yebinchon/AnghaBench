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
struct rockchip_typec_phy {int /*<<< orphan*/  clk_ref; int /*<<< orphan*/  clk_core; int /*<<< orphan*/  pipe_rst; int /*<<< orphan*/  uphy_rst; int /*<<< orphan*/  tcphy_rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rockchip_typec_phy *tcphy)
{
	FUNC1(tcphy->tcphy_rst);
	FUNC1(tcphy->uphy_rst);
	FUNC1(tcphy->pipe_rst);
	FUNC0(tcphy->clk_core);
	FUNC0(tcphy->clk_ref);
}