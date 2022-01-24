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
struct fw_fcoe_vnp_cmd {int /*<<< orphan*/  alloc_to_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_lnode {int /*<<< orphan*/  vnp_flowid; int /*<<< orphan*/  fcf_flowid; } ;
struct csio_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  mb_mempool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*,...) ; 
 int FUNC4 (struct csio_hw*,struct csio_mb*) ; 
 struct csio_mb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  n_err_nomem ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct csio_hw *hw, struct csio_lnode *ln)
{
	struct csio_mb  *mbp;
	struct fw_fcoe_vnp_cmd *rsp;
	int ret = 0;
	int retry = 0;

	/* Issue VNP cmd to free vport */
	/* Allocate Mbox request */

	FUNC9(&hw->lock);
	mbp = FUNC5(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		ret = -ENOMEM;
		goto out;
	}

	FUNC2(ln, mbp, CSIO_MB_DEFAULT_TMO,
				   ln->fcf_flowid, ln->vnp_flowid,
				   NULL);

	for (retry = 0; retry < 3; retry++) {
		ret = FUNC4(hw, mbp);
		if (ret != -EBUSY)
			break;

		/* Retry if mbox returns busy */
		FUNC10(&hw->lock);
		FUNC7(2000);
		FUNC9(&hw->lock);
	}

	if (ret) {
		FUNC3(ln, "Failed to issue mbox FCoE VNP command\n");
		goto out_free;
	}

	/* Process Mbox response of VNP command */
	rsp = (struct fw_fcoe_vnp_cmd *)(mbp->mb);
	if (FUNC1(FUNC8(rsp->alloc_to_len16)) != FW_SUCCESS) {
		FUNC3(ln, "FCOE VNP FREE cmd returned 0x%x!\n",
			    FUNC1(FUNC8(rsp->alloc_to_len16)));
		ret = -EINVAL;
	}

out_free:
	FUNC6(mbp, hw->mb_mempool);
out:
	FUNC10(&hw->lock);
	return ret;
}