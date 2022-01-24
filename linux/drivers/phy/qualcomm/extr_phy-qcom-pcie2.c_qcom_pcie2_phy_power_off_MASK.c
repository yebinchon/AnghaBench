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
typedef  int /*<<< orphan*/  u32 ;
struct qcom_phy {int /*<<< orphan*/  pipe_reset; int /*<<< orphan*/  pipe_clk; scalar_t__ base; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCIE2_PHY_RESET_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qcom_phy* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct qcom_phy *qphy = FUNC2(phy);
	u32 val;

	val = FUNC3(qphy->base + PCIE2_PHY_RESET_CTRL);
	val |= FUNC0(0);
	FUNC5(val, qphy->base + PCIE2_PHY_RESET_CTRL);

	FUNC1(qphy->pipe_clk);
	FUNC4(qphy->pipe_reset);

	return 0;
}