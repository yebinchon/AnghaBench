#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct csio_wrm {void* fw_iq_start; void* fw_eq_start; } ;
struct csio_mb {int dummy; } ;
struct TYPE_3__ {void* cclk; } ;
struct csio_hw {int port_vec; int flags; int num_pports; int /*<<< orphan*/  mb_mempool; TYPE_2__* pport; void* cfg_neq; void* cfg_niq; TYPE_1__ vpd; int /*<<< orphan*/  pfn; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
struct TYPE_4__ {int portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  CCLK ; 
 int CSIO_HWF_USING_SOFT_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int CSIO_MAX_PPORTS ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EQ_END ; 
 int /*<<< orphan*/  EQ_START ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IQFLINT_END ; 
 int /*<<< orphan*/  IQFLINT_START ; 
 int /*<<< orphan*/  PORTVEC ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,char*,...) ; 
 struct csio_wrm* FUNC6 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*) ; 
 scalar_t__ FUNC8 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC9 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_hw*,struct csio_mb*,int*,int /*<<< orphan*/ ,void**) ; 
 int csio_port_mask ; 
 int FUNC11 (int) ; 
 struct csio_mb* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC14(struct csio_hw *hw)
{
	struct csio_wrm *wrm	= FUNC6(hw);
	struct csio_mb	*mbp;
	enum fw_retval retval;
	u32 param[6];
	int i, j = 0;

	/* Initialize portids to -1 */
	for (i = 0; i < CSIO_MAX_PPORTS; i++)
		hw->pport[i].portid = -1;

	mbp = FUNC12(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC1(hw, n_err_nomem);
		return -ENOMEM;
	}

	/* Get port vec information. */
	param[0] = FUNC2(PORTVEC);

	/* Get Core clock. */
	param[1] = FUNC2(CCLK);

	/* Get EQ id start and end. */
	param[2] = FUNC3(EQ_START);
	param[3] = FUNC3(EQ_END);

	/* Get IQ id start and end. */
	param[4] = FUNC3(IQFLINT_START);
	param[5] = FUNC3(IQFLINT_END);

	FUNC9(hw, mbp, CSIO_MB_DEFAULT_TMO, hw->pfn, 0,
		       FUNC0(param), param, NULL, false, NULL);
	if (FUNC8(hw, mbp)) {
		FUNC5(hw, "Issue of FW_PARAMS_CMD(read) failed!\n");
		FUNC13(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	FUNC10(hw, mbp, &retval,
			FUNC0(param), param);
	if (retval != FW_SUCCESS) {
		FUNC5(hw, "FW_PARAMS_CMD(read) failed with ret:0x%x!\n",
				retval);
		FUNC13(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	/* cache the information. */
	hw->port_vec = param[0];
	hw->vpd.cclk = param[1];
	wrm->fw_eq_start = param[2];
	wrm->fw_iq_start = param[4];

	/* Using FW configured max iqs & eqs */
	if ((hw->flags & CSIO_HWF_USING_SOFT_PARAMS) ||
		!FUNC7(hw)) {
		hw->cfg_niq = param[5] - param[4] + 1;
		hw->cfg_neq = param[3] - param[2] + 1;
		FUNC4(hw, "Using fwconfig max niqs %d neqs %d\n",
			hw->cfg_niq, hw->cfg_neq);
	}

	hw->port_vec &= csio_port_mask;

	hw->num_pports	= FUNC11(hw->port_vec);

	FUNC4(hw, "Port vector: 0x%x, #ports: %d\n",
		    hw->port_vec, hw->num_pports);

	for (i = 0; i < hw->num_pports; i++) {
		while ((hw->port_vec & (1 << j)) == 0)
			j++;
		hw->pport[i].portid = j++;
		FUNC4(hw, "Found Port:%d\n", hw->pport[i].portid);
	}
	FUNC13(mbp, hw->mb_mempool);

	return 0;
}