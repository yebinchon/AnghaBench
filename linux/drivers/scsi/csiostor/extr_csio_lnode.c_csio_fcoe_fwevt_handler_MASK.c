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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct fw_wr_hdr {int /*<<< orphan*/  hi; } ;
struct TYPE_2__ {int /*<<< orphan*/  fcoe_rdev; } ;
struct fw_rdev_wr {size_t event_cause; scalar_t__ protocol; TYPE_1__ u; int /*<<< orphan*/  flags_to_assoc_flowid; int /*<<< orphan*/  alloc_to_len16; } ;
struct fw_fcoe_link_cmd {int lstatus; int /*<<< orphan*/  vnpi_pkd; int /*<<< orphan*/  sub_opcode_fcfi; int /*<<< orphan*/  op_to_portid; } ;
struct fw_fcoe_els_ct_wr {int dummy; } ;
struct csio_rnode {int dummy; } ;
struct csio_lnode {size_t prev_evt; size_t cur_evt; int /*<<< orphan*/  lock; int /*<<< orphan*/  sm; } ;
struct csio_hw {size_t prev_evt; size_t cur_evt; int /*<<< orphan*/  lock; int /*<<< orphan*/  sm; } ;
typedef  enum fw_fcoe_link_status { ____Placeholder_fw_fcoe_link_status } fw_fcoe_link_status ;
typedef  enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ CPL_FW6_MSG ; 
 scalar_t__ CPL_FW6_PLD ; 
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int FCOE_LINKDOWN ; 
 int FCOE_LINKUP ; 
 scalar_t__ FW_FCOE_ELS_CT_WR ; 
 scalar_t__ FW_FCOE_LINK_CMD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FW_RDEV_WR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROT_FCOE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct csio_rnode* FUNC9 (struct csio_lnode*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_lnode*,char*,scalar_t__,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct csio_lnode*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct csio_lnode*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_lnode*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct csio_lnode*,char*,int,...) ; 
 struct csio_lnode* FUNC15 (struct csio_lnode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct csio_lnode*,struct fw_wr_hdr*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct csio_rnode*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct csio_lnode*,char*,scalar_t__) ; 
 int /*<<< orphan*/  n_cpl_unexp ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/ * n_evt_fw ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void
FUNC23(struct csio_hw *hw, __u8 cpl_op, __be64 *cmd)
{
	struct csio_lnode *ln;
	struct csio_rnode *rn;
	uint8_t portid, opcode = *(uint8_t *)cmd;
	struct fw_fcoe_link_cmd *lcmd;
	struct fw_wr_hdr *wr;
	struct fw_rdev_wr *rdev_wr;
	enum fw_fcoe_link_status lstatus;
	uint32_t fcfi, rdev_flowid, vnpi;
	enum csio_ln_ev evt;

	if (cpl_op == CPL_FW6_MSG && opcode == FW_FCOE_LINK_CMD) {

		lcmd = (struct fw_fcoe_link_cmd *)cmd;
		lstatus = lcmd->lstatus;
		portid = FUNC3(
					FUNC20(lcmd->op_to_portid));
		fcfi = FUNC2(FUNC20(lcmd->sub_opcode_fcfi));
		vnpi = FUNC4(FUNC20(lcmd->vnpi_pkd));

		if (lstatus == FCOE_LINKUP) {

			/* HW lock here */
			FUNC21(&hw->lock);
			FUNC13(hw, portid, fcfi, vnpi);
			FUNC22(&hw->lock);
			/* HW un lock here */

		} else if (lstatus == FCOE_LINKDOWN) {

			/* HW lock here */
			FUNC21(&hw->lock);
			FUNC12(hw, portid, fcfi, vnpi);
			FUNC22(&hw->lock);
			/* HW un lock here */
		} else {
			FUNC19(hw, "Unexpected FCOE LINK status:0x%x\n",
				  lcmd->lstatus);
			FUNC1(hw, n_cpl_unexp);
		}
	} else if (cpl_op == CPL_FW6_PLD) {
		wr = (struct fw_wr_hdr *) (cmd + 4);
		if (FUNC7(FUNC8(wr->hi))
			== FW_RDEV_WR) {

			rdev_wr = (struct fw_rdev_wr *) (cmd + 4);

			rdev_flowid = FUNC6(
					FUNC20(rdev_wr->alloc_to_len16));
			vnpi = FUNC5(
				    FUNC20(rdev_wr->flags_to_assoc_flowid));

			FUNC10(hw,
				"FW_RDEV_WR: flowid:x%x ev_cause:x%x "
				"vnpi:0x%x\n", rdev_flowid,
				rdev_wr->event_cause, vnpi);

			if (rdev_wr->protocol != PROT_FCOE) {
				FUNC11(hw,
					"FW_RDEV_WR: invalid proto:x%x "
					"received with flowid:x%x\n",
					rdev_wr->protocol,
					rdev_flowid);
				FUNC1(hw, n_evt_drop);
				return;
			}

			/* HW lock here */
			FUNC21(&hw->lock);
			ln = FUNC15(hw, vnpi);
			if (!ln) {
				FUNC11(hw,
					"FW_DEV_WR: invalid vnpi:x%x received "
					"with flowid:x%x\n", vnpi, rdev_flowid);
				FUNC1(hw, n_evt_drop);
				goto out_pld;
			}

			rn = FUNC9(ln, rdev_flowid,
					&rdev_wr->u.fcoe_rdev);
			if (!rn) {
				FUNC14(ln,
					"Failed to confirm rnode "
					"for flowid:x%x\n", rdev_flowid);
				FUNC1(hw, n_evt_drop);
				goto out_pld;
			}

			/* save previous event for debugging */
			ln->prev_evt = ln->cur_evt;
			ln->cur_evt = rdev_wr->event_cause;
			FUNC1(ln, n_evt_fw[rdev_wr->event_cause]);

			/* Translate all the fabric events to lnode SM events */
			evt = FUNC0(rdev_wr->event_cause);
			if (evt) {
				FUNC14(ln,
					"Posting event to lnode event:%d "
					"cause:%d flowid:x%x\n", evt,
					rdev_wr->event_cause, rdev_flowid);
				FUNC17(&ln->sm, evt);
			}

			/* Handover event to rn SM here. */
			FUNC18(rn, rdev_wr->event_cause);
out_pld:
			FUNC22(&hw->lock);
			return;
		} else {
			FUNC19(hw, "unexpected WR op(0x%x) recv\n",
				  FUNC7(FUNC8((wr->hi))));
			FUNC1(hw, n_cpl_unexp);
		}
	} else if (cpl_op == CPL_FW6_MSG) {
		wr = (struct fw_wr_hdr *) (cmd);
		if (FUNC7(FUNC8(wr->hi)) == FW_FCOE_ELS_CT_WR) {
			FUNC16(hw, wr,
					sizeof(struct fw_fcoe_els_ct_wr));
		} else {
			FUNC19(hw, "unexpected WR op(0x%x) recv\n",
				  FUNC7(FUNC8((wr->hi))));
			FUNC1(hw, n_cpl_unexp);
		}
	} else {
		FUNC19(hw, "unexpected CPL op(0x%x) recv\n", opcode);
		FUNC1(hw, n_cpl_unexp);
	}
}