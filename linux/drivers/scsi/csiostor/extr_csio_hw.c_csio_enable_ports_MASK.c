#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct csio_mb {int dummy; } ;
struct csio_hw {int num_pports; int /*<<< orphan*/  mb_mempool; TYPE_1__* pport; int /*<<< orphan*/  pfn; } ;
typedef  int /*<<< orphan*/  fw_port_cap32_t ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
struct TYPE_2__ {int /*<<< orphan*/  link_cfg; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FW_CAPS16 ; 
 scalar_t__ FW_CAPS32 ; 
 scalar_t__ FW_CAPS_UNKNOWN ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_PFVF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_PFVF_PORT_CAPS32 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct csio_mb*) ; 
 scalar_t__ FUNC7 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_hw*,struct csio_mb*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct csio_hw*,struct csio_mb*,int*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct csio_mb* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC14(struct csio_hw *hw)
{
	struct csio_mb  *mbp;
	u16 fw_caps = FW_CAPS_UNKNOWN;
	enum fw_retval retval;
	uint8_t portid;
	fw_port_cap32_t pcaps, acaps, rcaps;
	int i;

	mbp = FUNC12(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}

	for (i = 0; i < hw->num_pports; i++) {
		portid = hw->pport[i].portid;

		if (fw_caps == FW_CAPS_UNKNOWN) {
			u32 param, val;

			param = (FUNC1(FW_PARAMS_MNEM_PFVF) |
			 FUNC2(FW_PARAMS_PARAM_PFVF_PORT_CAPS32));
			val = 1;

			FUNC8(hw, mbp, CSIO_MB_DEFAULT_TMO,
				       hw->pfn, 0, 1, &param, &val, true,
				       NULL);

			if (FUNC7(hw, mbp)) {
				FUNC3(hw, "failed to issue FW_PARAMS_CMD(r) port:%d\n",
					 portid);
				FUNC13(mbp, hw->mb_mempool);
				return -EINVAL;
			}

			FUNC10(hw, mbp, &retval,
							0, NULL);
			fw_caps = retval ? FW_CAPS16 : FW_CAPS32;
		}

		/* Read PORT information */
		FUNC9(hw, mbp, CSIO_MB_DEFAULT_TMO, portid,
			     false, 0, fw_caps, NULL);

		if (FUNC7(hw, mbp)) {
			FUNC3(hw, "failed to issue FW_PORT_CMD(r) port:%d\n",
				 portid);
			FUNC13(mbp, hw->mb_mempool);
			return -EINVAL;
		}

		FUNC11(hw, mbp, &retval, fw_caps,
					      &pcaps, &acaps);
		if (retval != FW_SUCCESS) {
			FUNC3(hw, "FW_PORT_CMD(r) port:%d failed: 0x%x\n",
				 portid, retval);
			FUNC13(mbp, hw->mb_mempool);
			return -EINVAL;
		}

		FUNC4(&hw->pport[i].link_cfg, pcaps, acaps);

		FUNC5(&hw->pport[i].link_cfg, fw_caps, &rcaps);

		/* Write back PORT information */
		FUNC9(hw, mbp, CSIO_MB_DEFAULT_TMO, portid,
			     true, rcaps, fw_caps, NULL);

		if (FUNC7(hw, mbp)) {
			FUNC3(hw, "failed to issue FW_PORT_CMD(w) port:%d\n",
				 portid);
			FUNC13(mbp, hw->mb_mempool);
			return -EINVAL;
		}

		retval = FUNC6(mbp);
		if (retval != FW_SUCCESS) {
			FUNC3(hw, "FW_PORT_CMD(w) port:%d failed :0x%x\n",
				 portid, retval);
			FUNC13(mbp, hw->mb_mempool);
			return -EINVAL;
		}

	} /* For all ports */

	FUNC13(mbp, hw->mb_mempool);

	return 0;
}