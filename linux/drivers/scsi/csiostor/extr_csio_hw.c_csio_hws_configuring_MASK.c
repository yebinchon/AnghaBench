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
struct csio_hw {int prev_evt; int cur_evt; int /*<<< orphan*/  sm; } ;
typedef  enum csio_hw_ev { ____Placeholder_csio_hw_ev } csio_hw_ev ;

/* Variables and functions */
#define  CSIO_HWE_FATAL 131 
#define  CSIO_HWE_INIT 130 
#define  CSIO_HWE_INIT_DONE 129 
#define  CSIO_HWE_PCI_REMOVE 128 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_LN_NOTIFY_HWREADY ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  csio_hws_initializing ; 
 int /*<<< orphan*/  csio_hws_ready ; 
 int /*<<< orphan*/  csio_hws_uninit ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 

__attribute__((used)) static void
FUNC5(struct csio_hw *hw, enum csio_hw_ev evt)
{
	hw->prev_evt = hw->cur_evt;
	hw->cur_evt = evt;
	FUNC0(hw, n_evt_sm[evt]);

	switch (evt) {
	case CSIO_HWE_INIT:
		FUNC4(&hw->sm, csio_hws_initializing);
		FUNC2(hw);
		break;

	case CSIO_HWE_INIT_DONE:
		FUNC4(&hw->sm, csio_hws_ready);
		/* Fan out event to all lnode SMs */
		FUNC3(hw, CSIO_LN_NOTIFY_HWREADY);
		break;

	case CSIO_HWE_FATAL:
		FUNC4(&hw->sm, csio_hws_uninit);
		break;

	case CSIO_HWE_PCI_REMOVE:
		FUNC1(hw);
		break;
	default:
		FUNC0(hw, n_evt_unexp);
		break;
	}
}