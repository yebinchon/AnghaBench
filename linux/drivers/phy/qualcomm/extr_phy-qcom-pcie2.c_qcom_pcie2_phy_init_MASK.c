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
struct qcom_phy {int /*<<< orphan*/  phy_reset; int /*<<< orphan*/  vregs; int /*<<< orphan*/  dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct qcom_phy* FUNC2 (struct phy*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct qcom_phy *qphy = FUNC2(phy);
	int ret;

	ret = FUNC5(qphy->phy_reset);
	if (ret) {
		FUNC1(qphy->dev, "cannot deassert pipe reset\n");
		return ret;
	}

	ret = FUNC3(FUNC0(qphy->vregs), qphy->vregs);
	if (ret)
		FUNC4(qphy->phy_reset);

	return ret;
}