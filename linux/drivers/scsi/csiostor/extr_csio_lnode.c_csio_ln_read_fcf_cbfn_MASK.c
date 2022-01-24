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
struct fw_fcoe_fcf_cmd {int /*<<< orphan*/  spma_mac; int /*<<< orphan*/  fabric; int /*<<< orphan*/  name_id; int /*<<< orphan*/  mac; int /*<<< orphan*/  fc_map; int /*<<< orphan*/  fpma_to_portid; int /*<<< orphan*/  op_to_fcfi; int /*<<< orphan*/  fka_adv; int /*<<< orphan*/  max_fcoe_size; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  vf_id; int /*<<< orphan*/  priority_pkd; int /*<<< orphan*/  retval_len16; } ;
struct csio_mb {scalar_t__ mb; scalar_t__ priv; } ;
struct csio_lnode {struct csio_fcf_info* fcfinfo; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; int /*<<< orphan*/  lock; } ;
struct csio_fcf_info {int /*<<< orphan*/  spma_mac; int /*<<< orphan*/  fabric; int /*<<< orphan*/  name_id; int /*<<< orphan*/  mac; int /*<<< orphan*/  fc_map; int /*<<< orphan*/  portid; int /*<<< orphan*/  login; int /*<<< orphan*/  spma; int /*<<< orphan*/  fpma; int /*<<< orphan*/  fcfi; int /*<<< orphan*/  fka_adv; void* max_fcoe_size; int /*<<< orphan*/  vlan_id; void* vf_id; int /*<<< orphan*/  priority; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_lnode*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct csio_hw *hw, struct csio_mb *mbp)
{
	struct csio_lnode *ln = (struct csio_lnode *)mbp->priv;
	struct csio_fcf_info	*fcf_info;
	struct fw_fcoe_fcf_cmd *rsp =
				(struct fw_fcoe_fcf_cmd *)(mbp->mb);
	enum fw_retval retval;

	retval = FUNC0(FUNC11(rsp->retval_len16));
	if (retval != FW_SUCCESS) {
		FUNC8(ln, "FCOE FCF cmd failed with ret x%x\n",
				retval);
		FUNC10(mbp, hw->mb_mempool);
		return;
	}

	FUNC13(&hw->lock);
	fcf_info = ln->fcfinfo;
	fcf_info->priority = FUNC5(
					FUNC12(rsp->priority_pkd));
	fcf_info->vf_id = FUNC12(rsp->vf_id);
	fcf_info->vlan_id = rsp->vlan_id;
	fcf_info->max_fcoe_size = FUNC12(rsp->max_fcoe_size);
	fcf_info->fka_adv = FUNC7(rsp->fka_adv);
	fcf_info->fcfi = FUNC1(FUNC11(rsp->op_to_fcfi));
	fcf_info->fpma = FUNC2(rsp->fpma_to_portid);
	fcf_info->spma = FUNC6(rsp->fpma_to_portid);
	fcf_info->login = FUNC3(rsp->fpma_to_portid);
	fcf_info->portid = FUNC4(rsp->fpma_to_portid);
	FUNC9(fcf_info->fc_map, rsp->fc_map, sizeof(fcf_info->fc_map));
	FUNC9(fcf_info->mac, rsp->mac, sizeof(fcf_info->mac));
	FUNC9(fcf_info->name_id, rsp->name_id, sizeof(fcf_info->name_id));
	FUNC9(fcf_info->fabric, rsp->fabric, sizeof(fcf_info->fabric));
	FUNC9(fcf_info->spma_mac, rsp->spma_mac, sizeof(fcf_info->spma_mac));

	FUNC14(&hw->lock);

	FUNC10(mbp, hw->mb_mempool);
}