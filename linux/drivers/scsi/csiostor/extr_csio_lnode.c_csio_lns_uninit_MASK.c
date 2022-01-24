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
struct csio_lnode {int /*<<< orphan*/  nport_id; int /*<<< orphan*/  fcf_lsthead; TYPE_1__* fcfinfo; int /*<<< orphan*/  sm; } ;
struct csio_hw {struct csio_lnode* rln; } ;
typedef  enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
#define  CSIO_LNE_DOWN_LINK 129 
#define  CSIO_LNE_LINKUP 128 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csio_ln_read_fcf_cbfn ; 
 int FUNC3 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csio_ln_vnp_read_cbfn ; 
 struct csio_hw* FUNC5 (struct csio_lnode*) ; 
 int /*<<< orphan*/  csio_lns_online ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_err ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 

__attribute__((used)) static void
FUNC8(struct csio_lnode *ln, enum csio_ln_ev evt)
{
	struct csio_hw *hw = FUNC5(ln);
	struct csio_lnode *rln = hw->rln;
	int rv;

	FUNC0(ln, n_evt_sm[evt]);
	switch (evt) {
	case CSIO_LNE_LINKUP:
		FUNC6(&ln->sm, csio_lns_online);
		/* Read FCF only for physical lnode */
		if (FUNC1(ln)) {
			rv = FUNC3(ln,
					csio_ln_read_fcf_cbfn);
			if (rv != 0) {
				/* TODO: Send HW RESET event */
				FUNC0(ln, n_err);
				break;
			}

			/* Add FCF record */
			FUNC7(&ln->fcfinfo->list, &rln->fcf_lsthead);
		}

		rv = FUNC4(ln, csio_ln_vnp_read_cbfn);
		if (rv != 0) {
			/* TODO: Send HW RESET event */
			FUNC0(ln, n_err);
		}
		break;

	case CSIO_LNE_DOWN_LINK:
		break;

	default:
		FUNC2(ln,
			    "unexp ln event %d recv from did:x%x in "
			    "ln state[uninit].\n", evt, ln->nport_id);
		FUNC0(ln, n_evt_unexp);
		break;
	} /* switch event */
}