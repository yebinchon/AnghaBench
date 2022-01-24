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
typedef  int uint32_t ;
struct fw_hello_cmd {int /*<<< orphan*/  err_to_clearinit; int /*<<< orphan*/  fwrev; int /*<<< orphan*/  retval_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {void* fwrev; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
typedef  enum csio_dev_state { ____Placeholder_csio_dev_state } csio_dev_state ;

/* Variables and functions */
 int CSIO_DEV_STATE_ERR ; 
 int CSIO_DEV_STATE_INIT ; 
 int CSIO_DEV_STATE_UNINIT ; 
 int FUNC0 (void*) ; 
 int FW_HELLO_CMD_ERR_F ; 
 int FW_HELLO_CMD_INIT_F ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FW_SUCCESS ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct csio_hw *hw, struct csio_mb *mbp,
			  enum fw_retval *retval, enum csio_dev_state *state,
			  uint8_t *mpfn)
{
	struct fw_hello_cmd *rsp = (struct fw_hello_cmd *)(mbp->mb);
	uint32_t value;

	*retval = FUNC0(FUNC2(rsp->retval_len16));

	if (*retval == FW_SUCCESS) {
		hw->fwrev = FUNC2(rsp->fwrev);

		value = FUNC2(rsp->err_to_clearinit);
		*mpfn = FUNC1(value);

		if (value & FW_HELLO_CMD_INIT_F)
			*state = CSIO_DEV_STATE_INIT;
		else if (value & FW_HELLO_CMD_ERR_F)
			*state = CSIO_DEV_STATE_ERR;
		else
			*state = CSIO_DEV_STATE_UNINIT;
	}
}