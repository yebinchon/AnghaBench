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
struct iss_csiphy {int phy_in_use; int /*<<< orphan*/  mutex; int /*<<< orphan*/  csi2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI2_COMPLEXIO_CFG_PWD_CMD_ON ; 
 int /*<<< orphan*/  FUNC0 (struct iss_csiphy*) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_csiphy*) ; 
 int FUNC2 (struct iss_csiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct iss_csiphy *phy)
{
	int rval;

	FUNC3(&phy->mutex);

	rval = FUNC5(phy->csi2);
	if (rval)
		goto done;

	FUNC0(phy);
	FUNC1(phy);

	rval = FUNC2(phy, CSI2_COMPLEXIO_CFG_PWD_CMD_ON);
	if (rval)
		goto done;

	phy->phy_in_use = 1;

done:
	FUNC4(&phy->mutex);
	return rval;
}