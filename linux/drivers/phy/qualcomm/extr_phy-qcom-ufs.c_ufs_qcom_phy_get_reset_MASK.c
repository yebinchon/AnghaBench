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
struct ufs_qcom_phy {struct reset_control* ufs_reset; int /*<<< orphan*/  dev; } ;
struct reset_control {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 struct reset_control* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ufs_qcom_phy *phy_common)
{
	struct reset_control *reset;

	if (phy_common->ufs_reset)
		return 0;

	reset = FUNC2(phy_common->dev, 0);
	if (FUNC0(reset))
		return FUNC1(reset);

	phy_common->ufs_reset = reset;
	return 0;
}