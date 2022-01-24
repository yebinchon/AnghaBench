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
typedef  int /*<<< orphan*/  uint8_t ;
struct fw_fcoe_port_stats {int dummy; } ;
struct fw_fcoe_port_cmd_params {int idx; int nstats; int /*<<< orphan*/  portid; } ;
struct csio_mb {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,struct fw_fcoe_port_cmd_params*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,struct csio_mb*,int*,struct fw_fcoe_port_cmd_params*,struct fw_fcoe_port_stats*) ; 
 struct csio_mb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_mb*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct csio_hw *hw, uint8_t portid,
			struct fw_fcoe_port_stats *port_stats)
{
	struct csio_mb  *mbp;
	struct fw_fcoe_port_cmd_params portparams;
	enum fw_retval retval;
	int idx;

	mbp = FUNC4(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, "FCoE FCF PARAMS command out of memory!\n");
		return -EINVAL;
	}
	portparams.portid = portid;

	for (idx = 1; idx <= 3; idx++) {
		portparams.idx = (idx-1)*6 + 1;
		portparams.nstats = 6;
		if (idx == 3)
			portparams.nstats = 4;
		FUNC1(hw, mbp, CSIO_MB_DEFAULT_TMO,
							&portparams, NULL);
		if (FUNC2(hw, mbp)) {
			FUNC0(hw, "Issue of FCoE port params failed!\n");
			FUNC5(mbp, hw->mb_mempool);
			return -EINVAL;
		}
		FUNC3(hw, mbp, &retval,
						&portparams, port_stats);
	}

	FUNC5(mbp, hw->mb_mempool);
	return 0;
}