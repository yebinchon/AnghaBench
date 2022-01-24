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
typedef  size_t uint8_t ;
struct csio_rnode {size_t prev_evt; size_t cur_evt; int /*<<< orphan*/  sm; } ;
struct csio_lnode {int dummy; } ;
typedef  enum csio_rn_ev { ____Placeholder_csio_rn_ev } csio_rn_ev ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_rnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_lnode*,struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_rnode*) ; 
 struct csio_lnode* FUNC7 (struct csio_rnode*) ; 
 int /*<<< orphan*/ * n_evt_fw ; 
 int /*<<< orphan*/  n_evt_unexp ; 

void
FUNC8(struct csio_rnode *rn, uint8_t fwevt)
{
	struct csio_lnode *ln = FUNC7(rn);
	enum csio_rn_ev evt;

	evt = FUNC0(fwevt);
	if (!evt) {
		FUNC3(ln, "ssni:x%x Unhandled FW Rdev event: %d\n",
			    FUNC6(rn), fwevt);
		FUNC1(rn, n_evt_unexp);
		return;
	}
	FUNC1(rn, n_evt_fw[fwevt]);

	/* Track previous & current events for debugging */
	rn->prev_evt = rn->cur_evt;
	rn->cur_evt = fwevt;

	/* Post event to rnode SM */
	FUNC4(&rn->sm, evt);

	/* Free rn if in uninit state */
	if (FUNC2(rn))
		FUNC5(ln, rn);
}