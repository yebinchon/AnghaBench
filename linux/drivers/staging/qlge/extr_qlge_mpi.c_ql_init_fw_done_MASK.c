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
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  fw_rev_id; } ;
struct mbox_params {int out_count; int /*<<< orphan*/ * mbox_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct ql_adapter*) ; 
 int FUNC2 (struct ql_adapter*,struct mbox_params*) ; 

__attribute__((used)) static void FUNC3(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
	int status;

	mbcp->out_count = 2;

	status = FUNC2(qdev, mbcp);
	if (status) {
		FUNC0(qdev, drv, qdev->ndev, "Firmware did not initialize!\n");
	} else {
		FUNC0(qdev, drv, qdev->ndev, "Firmware Revision  = 0x%.08x.\n",
			  mbcp->mbox_out[1]);
		qdev->fw_rev_id = mbcp->mbox_out[1];
		status = FUNC1(qdev);
		if (status)
			FUNC0(qdev, ifup, qdev->ndev,
				  "Failed to init CAM/Routing tables.\n");
	}
}