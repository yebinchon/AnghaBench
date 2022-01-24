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
struct csio_hw {int prev_evt; int cur_evt; int /*<<< orphan*/  sm; int /*<<< orphan*/  evtflag; } ;
typedef  enum csio_hw_ev { ____Placeholder_csio_hw_ev } csio_hw_ev ;

/* Variables and functions */
#define  CSIO_HWE_FW_DLOAD 133 
#define  CSIO_HWE_HBA_RESET 132 
 int /*<<< orphan*/  CSIO_HWE_HBA_RESET_DONE ; 
#define  CSIO_HWE_PCIERR_DETECTED 131 
#define  CSIO_HWE_PCI_REMOVE 130 
#define  CSIO_HWE_QUIESCED 129 
#define  CSIO_HWE_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_LN_NOTIFY_HWREMOVE ; 
 int /*<<< orphan*/  CSIO_LN_NOTIFY_HWRESET ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  csio_hws_pcierr ; 
 int /*<<< orphan*/  csio_hws_quiesced ; 
 int /*<<< orphan*/  csio_hws_removing ; 
 int /*<<< orphan*/  csio_hws_resetting ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int) ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 

__attribute__((used)) static void
FUNC7(struct csio_hw *hw, enum csio_hw_ev evt)
{
	hw->prev_evt = hw->cur_evt;
	hw->cur_evt = evt;
	FUNC0(hw, n_evt_sm[evt]);

	switch (evt) {
	case CSIO_HWE_QUIESCED:
		switch (hw->evtflag) {
		case CSIO_HWE_FW_DLOAD:
			FUNC5(&hw->sm, csio_hws_resetting);
			/* Download firmware */
			/* Fall through */

		case CSIO_HWE_HBA_RESET:
			FUNC5(&hw->sm, csio_hws_resetting);
			/* Start reset of the HBA */
			FUNC3(hw, CSIO_LN_NOTIFY_HWRESET);
			FUNC6(hw, false);
			FUNC2(hw, false);
			FUNC4(&hw->sm, CSIO_HWE_HBA_RESET_DONE);
			break;

		case CSIO_HWE_PCI_REMOVE:
			FUNC5(&hw->sm, csio_hws_removing);
			FUNC3(hw, CSIO_LN_NOTIFY_HWREMOVE);
			FUNC6(hw, true);
			/* Now send the bye command */
			FUNC1(hw);
			break;

		case CSIO_HWE_SUSPEND:
			FUNC5(&hw->sm, csio_hws_quiesced);
			break;

		case CSIO_HWE_PCIERR_DETECTED:
			FUNC5(&hw->sm, csio_hws_pcierr);
			FUNC6(hw, false);
			break;

		default:
			FUNC0(hw, n_evt_unexp);
			break;

		}
		break;

	default:
		FUNC0(hw, n_evt_unexp);
		break;
	}
}