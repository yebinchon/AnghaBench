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
typedef  int /*<<< orphan*/  uint32_t ;
struct csio_lnode {int /*<<< orphan*/  fcf_flowid; struct csio_fcf_info* fcfinfo; } ;
struct csio_hw {int /*<<< orphan*/  fcf_flowid; struct csio_fcf_info* fcfinfo; } ;
struct csio_fcf_info {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*) ; 
 struct csio_lnode* FUNC4 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_lnode*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_lnode*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/  n_link_down ; 

__attribute__((used)) static void
FUNC7(struct csio_hw *hw, uint8_t portid, uint32_t fcfi,
		      uint32_t vnpi)
{
	struct csio_fcf_info *fp;
	struct csio_lnode *ln;

	/* Lookup lnode based on vnpi */
	ln = FUNC4(hw, vnpi);
	if (ln) {
		fp = ln->fcfinfo;
		FUNC0(ln, n_link_down);

		/*Warn if linkdown received if lnode is not in ready state */
		if (!FUNC2(ln)) {
			FUNC5(ln,
				"warn: FCOE link is already in offline "
				"Ignoring Fcoe linkdown event on portid %d\n",
				 portid);
			FUNC0(ln, n_evt_drop);
			return;
		}

		/* Verify portid */
		if (fp->portid != portid) {
			FUNC5(ln,
				"warn: FCOE linkdown recv with "
				"invalid port %d\n", portid);
			FUNC0(ln, n_evt_drop);
			return;
		}

		/* verify fcfi */
		if (ln->fcf_flowid != fcfi) {
			FUNC5(ln,
				"warn: FCOE linkdown recv with "
				"invalid fcfi x%x\n", fcfi);
			FUNC0(ln, n_evt_drop);
			return;
		}

		FUNC1(hw, "Port:%d - FCOE LINK DOWN\n", portid);

		/* Send LINK_DOWN event to lnode s/m */
		FUNC3(ln);

		return;
	} else {
		FUNC6(hw,
			  "warn: FCOE linkdown recv with invalid vnpi x%x\n",
			  vnpi);
		FUNC0(hw, n_evt_drop);
	}
}