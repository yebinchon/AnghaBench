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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  cecr; int /*<<< orphan*/  cecdr; } ;
struct TYPE_4__ {TYPE_1__ cp; } ;

/* Variables and functions */
 scalar_t__ QE_ASSIGN_PAGE ; 
 scalar_t__ QE_ASSIGN_RISC ; 
 scalar_t__ QE_CR_FLG ; 
 scalar_t__ QE_CR_MCN_NORMAL_SHIFT ; 
 scalar_t__ QE_CR_MCN_RISC_ASSIGN_SHIFT ; 
 scalar_t__ QE_CR_MCN_USB_SHIFT ; 
 scalar_t__ QE_CR_SNUM_SHIFT ; 
 scalar_t__ QE_CR_SUBBLOCK_USB ; 
 scalar_t__ QE_RESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* qe_immr ; 
 int /*<<< orphan*/  qe_lock ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
{
	unsigned long flags;
	u8 mcn_shift = 0, dev_shift = 0;
	u32 ret;

	FUNC3(&qe_lock, flags);
	if (cmd == QE_RESET) {
		FUNC1(&qe_immr->cp.cecr, (u32) (cmd | QE_CR_FLG));
	} else {
		if (cmd == QE_ASSIGN_PAGE) {
			/* Here device is the SNUM, not sub-block */
			dev_shift = QE_CR_SNUM_SHIFT;
		} else if (cmd == QE_ASSIGN_RISC) {
			/* Here device is the SNUM, and mcnProtocol is
			 * e_QeCmdRiscAssignment value */
			dev_shift = QE_CR_SNUM_SHIFT;
			mcn_shift = QE_CR_MCN_RISC_ASSIGN_SHIFT;
		} else {
			if (device == QE_CR_SUBBLOCK_USB)
				mcn_shift = QE_CR_MCN_USB_SHIFT;
			else
				mcn_shift = QE_CR_MCN_NORMAL_SHIFT;
		}

		FUNC1(&qe_immr->cp.cecdr, cmd_input);
		FUNC1(&qe_immr->cp.cecr,
			 (cmd | QE_CR_FLG | ((u32) device << dev_shift) | (u32)
			  mcn_protocol << mcn_shift));
	}

	/* wait for the QE_CR_FLG to clear */
	ret = FUNC2((FUNC0(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
			   100, 0);
	/* On timeout (e.g. failure), the expression will be false (ret == 0),
	   otherwise it will be true (ret == 1). */
	FUNC4(&qe_lock, flags);

	return ret == 1;
}