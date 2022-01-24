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
struct histb_pcie {scalar_t__ vpcie; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  pipe_clk; int /*<<< orphan*/  aux_clk; int /*<<< orphan*/  bus_reset; int /*<<< orphan*/  sys_reset; int /*<<< orphan*/  soft_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct histb_pcie *hipcie)
{
	FUNC4(hipcie->soft_reset);
	FUNC4(hipcie->sys_reset);
	FUNC4(hipcie->bus_reset);

	FUNC0(hipcie->aux_clk);
	FUNC0(hipcie->pipe_clk);
	FUNC0(hipcie->sys_clk);
	FUNC0(hipcie->bus_clk);

	if (FUNC1(hipcie->reset_gpio))
		FUNC2(hipcie->reset_gpio, 0);

	if (hipcie->vpcie)
		FUNC3(hipcie->vpcie);
}