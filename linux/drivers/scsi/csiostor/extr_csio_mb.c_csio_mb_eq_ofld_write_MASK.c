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
typedef  int uint32_t ;
struct fw_eq_ofld_cmd {int /*<<< orphan*/  eqaddr; int /*<<< orphan*/  dcaen_to_eqsize; int /*<<< orphan*/  fetchszm_to_iqid; int /*<<< orphan*/  eqid_pkd; int /*<<< orphan*/  alloc_to_len16; int /*<<< orphan*/  op_to_vfn; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;
struct csio_eq_params {int /*<<< orphan*/  eqaddr; int /*<<< orphan*/  eqsize; int /*<<< orphan*/  cidxfthresh; int /*<<< orphan*/  cidxfthresho; int /*<<< orphan*/  fbmax; int /*<<< orphan*/  fbmin; int /*<<< orphan*/  dcacpu; int /*<<< orphan*/  dcaen; int /*<<< orphan*/  iqid; int /*<<< orphan*/  pciechn; int /*<<< orphan*/  cprio; int /*<<< orphan*/  hostfcmode; int /*<<< orphan*/  eqid; int /*<<< orphan*/  vfn; int /*<<< orphan*/  pfn; scalar_t__ eqstart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_mb*,struct fw_eq_ofld_cmd*,int,void*,void (*) (struct csio_hw*,struct csio_mb*),int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int /*<<< orphan*/  FW_EQ_OFLD_CMD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FW_EQ_OFLD_CMD_EQSTART_F ; 
 int FW_EQ_OFLD_CMD_EQSTOP_F ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static void
FUNC19(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
		      uint32_t mb_tmo, bool cascaded_req,
		      struct csio_eq_params *eq_ofld_params,
		      void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	struct fw_eq_ofld_cmd *cmdp = (struct fw_eq_ofld_cmd *)(mbp->mb);

	uint32_t eq_start_stop = (eq_ofld_params->eqstart)	?
				FW_EQ_OFLD_CMD_EQSTART_F :
				FW_EQ_OFLD_CMD_EQSTOP_F;

	/*
	 * If this EQ write is cascaded with EQ alloc request, do not
	 * re-initialize with 0's.
	 *
	 */
	if (!cascaded_req)
		FUNC0(mbp, cmdp, mb_tmo, priv, cbfn, 1);

	cmdp->op_to_vfn |= FUNC18(FUNC2(FW_EQ_OFLD_CMD)	|
				FW_CMD_REQUEST_F | FW_CMD_WRITE_F	|
				FUNC15(eq_ofld_params->pfn) |
				FUNC16(eq_ofld_params->vfn));
	cmdp->alloc_to_len16 |= FUNC18(eq_start_stop		|
				      FUNC1(sizeof(*cmdp) / 16));

	cmdp->eqid_pkd |= FUNC18(FUNC8(eq_ofld_params->eqid));

	cmdp->fetchszm_to_iqid |= FUNC18(
		FUNC12(eq_ofld_params->hostfcmode)	|
		FUNC5(eq_ofld_params->cprio)		|
		FUNC14(eq_ofld_params->pciechn)	|
		FUNC13(eq_ofld_params->iqid));

	cmdp->dcaen_to_eqsize |= FUNC18(
		FUNC7(eq_ofld_params->dcaen)		|
		FUNC6(eq_ofld_params->dcacpu)		|
		FUNC11(eq_ofld_params->fbmin)		|
		FUNC10(eq_ofld_params->fbmax)		|
		FUNC3(eq_ofld_params->cidxfthresho) |
		FUNC4(eq_ofld_params->cidxfthresh) |
		FUNC9(eq_ofld_params->eqsize));

	cmdp->eqaddr |= FUNC17(eq_ofld_params->eqaddr);

}