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
struct csio_rnode {int /*<<< orphan*/  sm; int /*<<< orphan*/  rdev_entry; } ;
struct csio_lnode {int dummy; } ;
typedef  enum csio_rn_ev { ____Placeholder_csio_rn_ev } csio_rn_ev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_rnode*,int /*<<< orphan*/ ) ; 
#define  CSIO_RNFE_LOGGED_IN 130 
#define  CSIO_RNFE_LOGO_RECV 129 
#define  CSIO_RNFE_PLOGI_RECV 128 
 int /*<<< orphan*/  FUNC1 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_rnode*) ; 
 int FUNC4 (struct csio_lnode*,struct csio_rnode*,int /*<<< orphan*/ ) ; 
 struct csio_lnode* FUNC5 (struct csio_rnode*) ; 
 int /*<<< orphan*/  csio_rns_ready ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_inval ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 

__attribute__((used)) static void
FUNC7(struct csio_rnode *rn, enum csio_rn_ev evt)
{
	struct csio_lnode *ln = FUNC5(rn);
	int ret = 0;

	FUNC0(rn, n_evt_sm[evt]);

	switch (evt) {
	case CSIO_RNFE_LOGGED_IN:
	case CSIO_RNFE_PLOGI_RECV:
		ret = FUNC4(ln, rn, rn->rdev_entry);
		if (!ret) {
			FUNC6(&rn->sm, csio_rns_ready);
			FUNC1(rn);
		} else {
			FUNC0(rn, n_err_inval);
		}
		break;
	case CSIO_RNFE_LOGO_RECV:
		FUNC2(ln,
			    "ssni:x%x Ignoring event %d recv "
			    "in rn state[uninit]\n", FUNC3(rn), evt);
		FUNC0(rn, n_evt_drop);
		break;
	default:
		FUNC2(ln,
			    "ssni:x%x unexp event %d recv "
			    "in rn state[uninit]\n", FUNC3(rn), evt);
		FUNC0(rn, n_evt_unexp);
		break;
	}
}