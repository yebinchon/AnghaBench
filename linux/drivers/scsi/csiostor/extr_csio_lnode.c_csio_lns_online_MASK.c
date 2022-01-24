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
struct csio_lnode {int /*<<< orphan*/  nport_id; TYPE_1__* fcfinfo; int /*<<< orphan*/  sm; int /*<<< orphan*/  portid; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;
typedef  enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
#define  CSIO_LNE_DOWN_LINK 131 
#define  CSIO_LNE_FAB_INIT_DONE 130 
#define  CSIO_LNE_LINKUP 129 
#define  CSIO_LNE_LINK_DOWN 128 
 int /*<<< orphan*/  CSIO_LN_FC_LINKUP ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 struct csio_hw* FUNC5 (struct csio_lnode*) ; 
 int /*<<< orphan*/  csio_lns_ready ; 
 int /*<<< orphan*/  csio_lns_uninit ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct csio_lnode *ln, enum csio_ln_ev evt)
{
	struct csio_hw *hw = FUNC5(ln);

	FUNC0(ln, n_evt_sm[evt]);
	switch (evt) {
	case CSIO_LNE_LINKUP:
		FUNC3(ln,
			     "warn: FCOE link is up already "
			     "Ignoring linkup on port:%d\n", ln->portid);
		FUNC0(ln, n_evt_drop);
		break;

	case CSIO_LNE_FAB_INIT_DONE:
		FUNC6(&ln->sm, csio_lns_ready);

		FUNC9(&hw->lock);
		FUNC4(ln, CSIO_LN_FC_LINKUP);
		FUNC8(&hw->lock);

		break;

	case CSIO_LNE_LINK_DOWN:
		/* Fall through */
	case CSIO_LNE_DOWN_LINK:
		FUNC6(&ln->sm, csio_lns_uninit);
		if (FUNC1(ln)) {
			/* Remove FCF entry */
			FUNC7(&ln->fcfinfo->list);
		}
		break;

	default:
		FUNC2(ln,
			    "unexp ln event %d recv from did:x%x in "
			    "ln state[uninit].\n", evt, ln->nport_id);
		FUNC0(ln, n_evt_unexp);

		break;
	} /* switch event */
}