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
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_iq_cmd {void* fl0size; void* type_to_iqandstindex; void* alloc_to_len16; void* op_to_vfn; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_iq_params {int /*<<< orphan*/  fl1size; int /*<<< orphan*/  fl0size; int /*<<< orphan*/  iqasynch; int /*<<< orphan*/  type; int /*<<< orphan*/  viid; int /*<<< orphan*/  vfn; int /*<<< orphan*/  pfn; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_mb*,struct fw_iq_cmd*,int /*<<< orphan*/ ,void*,void (*) (struct csio_hw*,struct csio_mb*),int) ; 
 int FW_CMD_EXEC_F ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_IQ_CMD ; 
 int FW_IQ_CMD_ALLOC_F ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
		 uint32_t mb_tmo, struct csio_iq_params *iq_params,
		 void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	struct fw_iq_cmd *cmdp = (struct fw_iq_cmd *)(mbp->mb);

	FUNC0(mbp, cmdp, mb_tmo, priv, cbfn, 1);

	cmdp->op_to_vfn = FUNC8(FUNC2(FW_IQ_CMD)		|
				FW_CMD_REQUEST_F | FW_CMD_EXEC_F	|
				FUNC4(iq_params->pfn)	|
				FUNC6(iq_params->vfn));

	cmdp->alloc_to_len16 = FUNC8(FW_IQ_CMD_ALLOC_F		|
				FUNC1(sizeof(*cmdp) / 16));

	cmdp->type_to_iqandstindex = FUNC8(
				FUNC7(iq_params->viid)	|
				FUNC5(iq_params->type)	|
				FUNC3(iq_params->iqasynch));

	cmdp->fl0size = FUNC9(iq_params->fl0size);
	cmdp->fl0size = FUNC9(iq_params->fl1size);

}