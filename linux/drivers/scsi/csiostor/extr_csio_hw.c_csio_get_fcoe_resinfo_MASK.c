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
struct fw_fcoe_res_info_cmd {int /*<<< orphan*/  used_vnps; int /*<<< orphan*/  used_fcfs; int /*<<< orphan*/  max_vnps; int /*<<< orphan*/  max_fcfs; int /*<<< orphan*/  used_ssns; int /*<<< orphan*/  used_xchgs; int /*<<< orphan*/  max_ssns; int /*<<< orphan*/  max_xchgs; int /*<<< orphan*/  r_r_tov; int /*<<< orphan*/  r_a_tov_els; int /*<<< orphan*/  r_a_tov_seq; int /*<<< orphan*/  e_d_tov; int /*<<< orphan*/  retval_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_fcoe_res_info {void* max_xchgs; void* max_ssns; void* used_vnps; void* used_fcfs; void* max_vnps; void* max_fcfs; void* used_ssns; void* used_xchgs; void* r_r_tov; void* r_a_tov_els; void* r_a_tov_seq; void* e_d_tov; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; struct csio_fcoe_res_info fres_info; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC1 (void*) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct csio_hw*,struct csio_mb*) ; 
 struct csio_mb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct csio_hw *hw)
{
	struct csio_fcoe_res_info *res_info = &hw->fres_info;
	struct fw_fcoe_res_info_cmd *rsp;
	struct csio_mb  *mbp;
	enum fw_retval retval;

	mbp = FUNC6(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}

	/* Get FCoE FW resource information */
	FUNC4(hw, mbp, CSIO_MB_DEFAULT_TMO, NULL);

	if (FUNC5(hw, mbp)) {
		FUNC3(hw, "failed to issue FW_FCOE_RES_INFO_CMD\n");
		FUNC7(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	rsp = (struct fw_fcoe_res_info_cmd *)(mbp->mb);
	retval = FUNC1(FUNC8(rsp->retval_len16));
	if (retval != FW_SUCCESS) {
		FUNC3(hw, "FW_FCOE_RES_INFO_CMD failed with ret x%x\n",
			 retval);
		FUNC7(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	res_info->e_d_tov = FUNC9(rsp->e_d_tov);
	res_info->r_a_tov_seq = FUNC9(rsp->r_a_tov_seq);
	res_info->r_a_tov_els = FUNC9(rsp->r_a_tov_els);
	res_info->r_r_tov = FUNC9(rsp->r_r_tov);
	res_info->max_xchgs = FUNC8(rsp->max_xchgs);
	res_info->max_ssns = FUNC8(rsp->max_ssns);
	res_info->used_xchgs = FUNC8(rsp->used_xchgs);
	res_info->used_ssns = FUNC8(rsp->used_ssns);
	res_info->max_fcfs = FUNC8(rsp->max_fcfs);
	res_info->max_vnps = FUNC8(rsp->max_vnps);
	res_info->used_fcfs = FUNC8(rsp->used_fcfs);
	res_info->used_vnps = FUNC8(rsp->used_vnps);

	FUNC2(hw, "max ssns:%d max xchgs:%d\n", res_info->max_ssns,
						  res_info->max_xchgs);
	FUNC7(mbp, hw->mb_mempool);

	return 0;
}