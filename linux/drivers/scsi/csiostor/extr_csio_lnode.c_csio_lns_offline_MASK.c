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
struct csio_lnode {int /*<<< orphan*/  nport_id; int /*<<< orphan*/  sm; int /*<<< orphan*/  fcf_lsthead; TYPE_1__* fcfinfo; } ;
struct csio_hw {struct csio_lnode* rln; } ;
typedef  enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
#define  CSIO_LNE_CLOSE 132 
#define  CSIO_LNE_DOWN_LINK 131 
#define  CSIO_LNE_LINKUP 130 
#define  CSIO_LNE_LINK_DOWN 129 
#define  CSIO_LNE_LOGO 128 
 int /*<<< orphan*/  CSIO_RNFE_CLOSE ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csio_ln_read_fcf_cbfn ; 
 int FUNC4 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csio_ln_vnp_read_cbfn ; 
 struct csio_hw* FUNC6 (struct csio_lnode*) ; 
 int /*<<< orphan*/  csio_lns_online ; 
 int /*<<< orphan*/  csio_lns_uninit ; 
 int /*<<< orphan*/  FUNC7 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_err ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 

__attribute__((used)) static void
FUNC10(struct csio_lnode *ln, enum csio_ln_ev evt)
{
	struct csio_hw *hw = FUNC6(ln);
	struct csio_lnode *rln = hw->rln;
	int rv;

	FUNC1(ln, n_evt_sm[evt]);
	switch (evt) {
	case CSIO_LNE_LINKUP:
		FUNC8(&ln->sm, csio_lns_online);
		/* Read FCF only for physical lnode */
		if (FUNC2(ln)) {
			rv = FUNC4(ln,
					csio_ln_read_fcf_cbfn);
			if (rv != 0) {
				/* TODO: Send HW RESET event */
				FUNC1(ln, n_err);
				break;
			}

			/* Add FCF record */
			FUNC9(&ln->fcfinfo->list, &rln->fcf_lsthead);
		}

		rv = FUNC5(ln, csio_ln_vnp_read_cbfn);
		if (rv != 0) {
			/* TODO: Send HW RESET event */
			FUNC1(ln, n_err);
		}
		break;

	case CSIO_LNE_LINK_DOWN:
	case CSIO_LNE_DOWN_LINK:
	case CSIO_LNE_LOGO:
		FUNC3(ln,
			    "ignoring event %d recv from did x%x"
			    "in ln state[offline].\n", evt, ln->nport_id);
		FUNC1(ln, n_evt_drop);
		break;

	case CSIO_LNE_CLOSE:
		FUNC8(&ln->sm, csio_lns_uninit);
		FUNC7(ln, CSIO_RNFE_CLOSE);
		break;

	default:
		FUNC3(ln,
			    "unexp ln event %d recv from did:x%x in "
			    "ln state[offline]\n", evt, ln->nport_id);
		FUNC1(ln, n_evt_unexp);
		FUNC0(0);
		break;
	} /* switch event */
}