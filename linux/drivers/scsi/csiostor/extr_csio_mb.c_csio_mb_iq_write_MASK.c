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
struct fw_iq_cmd {int /*<<< orphan*/  fl0addr; int /*<<< orphan*/  fl0size; int /*<<< orphan*/  fl0dcaen_to_fl0cidxfthresh; int /*<<< orphan*/  iqns_to_fl0congen; int /*<<< orphan*/  iqaddr; int /*<<< orphan*/  iqsize; int /*<<< orphan*/  iqdroprss_to_iqesize; int /*<<< orphan*/  type_to_iqandstindex; int /*<<< orphan*/  fl1id; int /*<<< orphan*/  fl0id; int /*<<< orphan*/  iqid; int /*<<< orphan*/  alloc_to_len16; int /*<<< orphan*/  op_to_vfn; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_iq_params {int iqid; int fl0id; int fl1id; int iqsize; scalar_t__ type; int fl0size; scalar_t__ fl0addr; int /*<<< orphan*/  fl0cidxfthresh; int /*<<< orphan*/  fl0fbmax; int /*<<< orphan*/  fl0fbmin; int /*<<< orphan*/  fl0dcacpu; int /*<<< orphan*/  fl0dcaen; int /*<<< orphan*/  fl0packen; int /*<<< orphan*/  fl0paden; int /*<<< orphan*/  fl0cprio; int /*<<< orphan*/  fl0hostfcmode; int /*<<< orphan*/  iqflintcongen; int /*<<< orphan*/  iqflintiqhsen; scalar_t__ iqaddr; int /*<<< orphan*/  iqesize; int /*<<< orphan*/  iqcprio; int /*<<< orphan*/  iqintcntthresh; int /*<<< orphan*/  iqdcacpu; int /*<<< orphan*/  iqdcaen; int /*<<< orphan*/  iqpciech; int /*<<< orphan*/  iqandstindex; int /*<<< orphan*/  iqanud; int /*<<< orphan*/  iqanus; int /*<<< orphan*/  iqandst; int /*<<< orphan*/  vfn; int /*<<< orphan*/  pfn; scalar_t__ iq_start; } ;
struct csio_hw {int flags; } ;

/* Variables and functions */
 int CSIO_HWF_ROOT_NO_RELAXED_ORDERING ; 
 int /*<<< orphan*/  FUNC0 (struct csio_mb*,struct fw_iq_cmd*,int,void*,void (*) (struct csio_hw*,struct csio_mb*),int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int /*<<< orphan*/  FW_IQ_CMD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int FW_IQ_CMD_IQSTART_F ; 
 int FW_IQ_CMD_IQSTOP_F ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 

__attribute__((used)) static void
FUNC31(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
		 uint32_t mb_tmo, bool cascaded_req,
		 struct csio_iq_params *iq_params,
		 void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	struct fw_iq_cmd *cmdp = (struct fw_iq_cmd *)(mbp->mb);

	uint32_t iq_start_stop = (iq_params->iq_start)	?
					FW_IQ_CMD_IQSTART_F :
					FW_IQ_CMD_IQSTOP_F;
	int relaxed = !(hw->flags & CSIO_HWF_ROOT_NO_RELAXED_ORDERING);

	/*
	 * If this IQ write is cascaded with IQ alloc request, do not
	 * re-initialize with 0's.
	 *
	 */
	if (!cascaded_req)
		FUNC0(mbp, cmdp, mb_tmo, priv, cbfn, 1);

	cmdp->op_to_vfn |= FUNC29(FUNC2(FW_IQ_CMD)		|
				FW_CMD_REQUEST_F | FW_CMD_WRITE_F	|
				FUNC26(iq_params->pfn)	|
				FUNC27(iq_params->vfn));
	cmdp->alloc_to_len16 |= FUNC29(iq_start_stop |
				FUNC1(sizeof(*cmdp) / 16));
	cmdp->iqid |= FUNC30(iq_params->iqid);
	cmdp->fl0id |= FUNC30(iq_params->fl0id);
	cmdp->fl1id |= FUNC30(iq_params->fl1id);
	cmdp->type_to_iqandstindex |= FUNC29(
			FUNC15(iq_params->iqandst)	|
			FUNC17(iq_params->iqanus)	|
			FUNC16(iq_params->iqanud)	|
			FUNC14(iq_params->iqandstindex));
	cmdp->iqdroprss_to_iqesize |= FUNC30(
			FUNC25(iq_params->iqpciech)	|
			FUNC20(iq_params->iqdcaen)		|
			FUNC19(iq_params->iqdcacpu)	|
			FUNC24(iq_params->iqintcntthresh) |
			FUNC18(iq_params->iqcprio)		|
			FUNC21(iq_params->iqesize));

	cmdp->iqsize |= FUNC30(iq_params->iqsize);
	cmdp->iqaddr |= FUNC28(iq_params->iqaddr);

	if (iq_params->type == 0) {
		cmdp->iqns_to_fl0congen |= FUNC29(
			FUNC23(iq_params->iqflintiqhsen)|
			FUNC22(iq_params->iqflintcongen));
	}

	if (iq_params->fl0size && iq_params->fl0addr &&
	    (iq_params->fl0id != 0xFFFF)) {

		cmdp->iqns_to_fl0congen |= FUNC29(
			FUNC11(iq_params->fl0hostfcmode)|
			FUNC4(iq_params->fl0cprio)	|
			FUNC10(relaxed)			|
			FUNC5(relaxed)			|
			FUNC13(iq_params->fl0paden)	|
			FUNC12(iq_params->fl0packen));
		cmdp->fl0dcaen_to_fl0cidxfthresh |= FUNC30(
			FUNC7(iq_params->fl0dcaen)	|
			FUNC6(iq_params->fl0dcacpu)	|
			FUNC9(iq_params->fl0fbmin)	|
			FUNC8(iq_params->fl0fbmax)	|
			FUNC3(iq_params->fl0cidxfthresh));
		cmdp->fl0size |= FUNC30(iq_params->fl0size);
		cmdp->fl0addr |= FUNC28(iq_params->fl0addr);
	}
}