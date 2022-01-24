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
struct csio_hw {int evtflag; int prev_evt; int cur_evt; int /*<<< orphan*/  sm; } ;
typedef  enum csio_hw_ev { ____Placeholder_csio_hw_ev } csio_hw_ev ;

/* Variables and functions */
#define  CSIO_HWE_FATAL 133 
#define  CSIO_HWE_FW_DLOAD 132 
#define  CSIO_HWE_HBA_RESET 131 
#define  CSIO_HWE_PCIERR_DETECTED 130 
#define  CSIO_HWE_PCI_REMOVE 129 
 int /*<<< orphan*/  CSIO_HWE_QUIESCED ; 
#define  CSIO_HWE_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_LN_NOTIFY_HWSTOP ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*) ; 
 int /*<<< orphan*/  csio_hws_quiescing ; 
 int /*<<< orphan*/  csio_hws_uninit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 

__attribute__((used)) static void
FUNC12(struct csio_hw *hw, enum csio_hw_ev evt)
{
	/* Remember the event */
	hw->evtflag = evt;

	hw->prev_evt = hw->cur_evt;
	hw->cur_evt = evt;
	FUNC0(hw, n_evt_sm[evt]);

	switch (evt) {
	case CSIO_HWE_HBA_RESET:
	case CSIO_HWE_FW_DLOAD:
	case CSIO_HWE_SUSPEND:
	case CSIO_HWE_PCI_REMOVE:
	case CSIO_HWE_PCIERR_DETECTED:
		FUNC11(&hw->sm, csio_hws_quiescing);
		/* cleanup all outstanding cmds */
		if (evt == CSIO_HWE_HBA_RESET ||
		    evt == CSIO_HWE_PCIERR_DETECTED)
			FUNC10(FUNC6(hw), false);
		else
			FUNC10(FUNC6(hw), true);

		FUNC3(hw);
		FUNC4(hw);
		FUNC2(hw);
		FUNC8(hw, CSIO_LN_NOTIFY_HWSTOP);
		FUNC1(hw);
		FUNC7(FUNC5(hw));
		FUNC9(&hw->sm, CSIO_HWE_QUIESCED);
		break;

	case CSIO_HWE_FATAL:
		FUNC11(&hw->sm, csio_hws_uninit);
		break;

	default:
		FUNC0(hw, n_evt_unexp);
		break;
	}
}