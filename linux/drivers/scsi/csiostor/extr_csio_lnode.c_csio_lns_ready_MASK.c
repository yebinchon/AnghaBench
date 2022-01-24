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
struct csio_lnode {int /*<<< orphan*/  nport_id; int /*<<< orphan*/  sm; TYPE_1__* fcfinfo; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;
typedef  enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
#define  CSIO_LNE_CLOSE 132 
#define  CSIO_LNE_DOWN_LINK 131 
#define  CSIO_LNE_FAB_INIT_DONE 130 
#define  CSIO_LNE_LINK_DOWN 129 
#define  CSIO_LNE_LOGO 128 
 int /*<<< orphan*/  CSIO_LN_FC_LINKDOWN ; 
 int /*<<< orphan*/  CSIO_RNFE_CLOSE ; 
 int /*<<< orphan*/  CSIO_RNFE_DOWN ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 struct csio_hw* FUNC5 (struct csio_lnode*) ; 
 int /*<<< orphan*/  csio_lns_offline ; 
 int /*<<< orphan*/  csio_lns_uninit ; 
 int /*<<< orphan*/  FUNC6 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct csio_lnode *ln, enum csio_ln_ev evt)
{
	struct csio_hw *hw = FUNC5(ln);

	FUNC1(ln, n_evt_sm[evt]);
	switch (evt) {
	case CSIO_LNE_FAB_INIT_DONE:
		FUNC3(ln,
			    "ignoring event %d recv from did x%x"
			    "in ln state[ready].\n", evt, ln->nport_id);
		FUNC1(ln, n_evt_drop);
		break;

	case CSIO_LNE_LINK_DOWN:
		FUNC7(&ln->sm, csio_lns_offline);
		FUNC6(ln, CSIO_RNFE_DOWN);

		FUNC10(&hw->lock);
		FUNC4(ln, CSIO_LN_FC_LINKDOWN);
		FUNC9(&hw->lock);

		if (FUNC2(ln)) {
			/* Remove FCF entry */
			FUNC8(&ln->fcfinfo->list);
		}
		break;

	case CSIO_LNE_DOWN_LINK:
		FUNC7(&ln->sm, csio_lns_offline);
		FUNC6(ln, CSIO_RNFE_DOWN);

		/* Host need to issue aborts in case if FW has not returned
		 * WRs with status "ABORTED"
		 */
		FUNC10(&hw->lock);
		FUNC4(ln, CSIO_LN_FC_LINKDOWN);
		FUNC9(&hw->lock);

		if (FUNC2(ln)) {
			/* Remove FCF entry */
			FUNC8(&ln->fcfinfo->list);
		}
		break;

	case CSIO_LNE_CLOSE:
		FUNC7(&ln->sm, csio_lns_uninit);
		FUNC6(ln, CSIO_RNFE_CLOSE);
		break;

	case CSIO_LNE_LOGO:
		FUNC7(&ln->sm, csio_lns_offline);
		FUNC6(ln, CSIO_RNFE_DOWN);
		break;

	default:
		FUNC3(ln,
			    "unexp ln event %d recv from did:x%x in "
			    "ln state[uninit].\n", evt, ln->nport_id);
		FUNC1(ln, n_evt_unexp);
		FUNC0(0);
		break;
	} /* switch event */
}