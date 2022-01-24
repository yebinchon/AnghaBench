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
typedef  int uint16_t ;
struct fw_caps_config_cmd {int /*<<< orphan*/  fcoecaps; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FW_CAPS_CONFIG_FCOE_CTRL_OFLD ; 
 int FW_CAPS_CONFIG_FCOE_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct csio_hw *hw, struct csio_mb *mbp)
{
	struct fw_caps_config_cmd *rsp = (struct fw_caps_config_cmd *)mbp->mb;
	uint16_t caps;

	caps = FUNC1(rsp->fcoecaps);

	if (!(caps & FW_CAPS_CONFIG_FCOE_INITIATOR)) {
		FUNC0(hw, "No FCoE Initiator capability in the firmware.\n");
		return -EINVAL;
	}

	if (!(caps & FW_CAPS_CONFIG_FCOE_CTRL_OFLD)) {
		FUNC0(hw, "No FCoE Control Offload capability\n");
		return -EINVAL;
	}

	return 0;
}