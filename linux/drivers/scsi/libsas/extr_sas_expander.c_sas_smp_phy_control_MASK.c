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
typedef  int u8 ;
struct sas_phy_linkrates {int minimum_linkrate; int maximum_linkrate; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; } ;
typedef  enum phy_func { ____Placeholder_phy_func } phy_func ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PC_REQ_SIZE ; 
 int /*<<< orphan*/  PC_RESP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SMP_PHY_CONTROL ; 
 int SMP_RESP_FUNC_ACC ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct domain_device*,int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int FUNC6(struct domain_device *dev, int phy_id,
			enum phy_func phy_func,
			struct sas_phy_linkrates *rates)
{
	u8 *pc_req;
	u8 *pc_resp;
	int res;

	pc_req = FUNC1(PC_REQ_SIZE);
	if (!pc_req)
		return -ENOMEM;

	pc_resp = FUNC2(PC_RESP_SIZE);
	if (!pc_resp) {
		FUNC3(pc_req);
		return -ENOMEM;
	}

	pc_req[1] = SMP_PHY_CONTROL;
	pc_req[9] = phy_id;
	pc_req[10]= phy_func;
	if (rates) {
		pc_req[32] = rates->minimum_linkrate << 4;
		pc_req[33] = rates->maximum_linkrate << 4;
	}

	res = FUNC5(dev, pc_req, PC_REQ_SIZE, pc_resp,PC_RESP_SIZE);
	if (res) {
		FUNC4("ex %016llx phy%02d PHY control failed: %d\n",
		       FUNC0(dev->sas_addr), phy_id, res);
	} else if (pc_resp[2] != SMP_RESP_FUNC_ACC) {
		FUNC4("ex %016llx phy%02d PHY control failed: function result 0x%x\n",
		       FUNC0(dev->sas_addr), phy_id, pc_resp[2]);
		res = pc_resp[2];
	}
	FUNC3(pc_resp);
	FUNC3(pc_req);
	return res;
}