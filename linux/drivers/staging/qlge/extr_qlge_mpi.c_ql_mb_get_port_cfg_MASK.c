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
struct ql_adapter {scalar_t__ link_config; scalar_t__ max_frame_size; int /*<<< orphan*/  ndev; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; int /*<<< orphan*/ * mbox_in; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  MB_CMD_GET_PORT_CFG ; 
 scalar_t__ MB_CMD_STS_GOOD ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct mbox_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ql_adapter*,struct mbox_params*) ; 

int FUNC4(struct ql_adapter *qdev)
{
	struct mbox_params mbc;
	struct mbox_params *mbcp = &mbc;
	int status = 0;

	FUNC0(mbcp, 0, sizeof(struct mbox_params));

	mbcp->in_count = 1;
	mbcp->out_count = 3;

	mbcp->mbox_in[0] = MB_CMD_GET_PORT_CFG;

	status = FUNC3(qdev, mbcp);
	if (status)
		return status;

	if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
		FUNC1(qdev, drv, qdev->ndev,
			  "Failed Get Port Configuration.\n");
		status = -EIO;
	} else	{
		FUNC2(qdev, drv, KERN_DEBUG, qdev->ndev,
			     "Passed Get Port Configuration.\n");
		qdev->link_config = mbcp->mbox_out[1];
		qdev->max_frame_size = mbcp->mbox_out[2];
	}
	return status;
}