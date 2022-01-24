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
struct fc_rport {scalar_t__ dd_data; } ;
struct csio_rnode {int /*<<< orphan*/  nport_id; } ;
struct csio_lnode {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  evtq_work; } ;
struct csio_hw {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  evtq_work; } ;
typedef  int /*<<< orphan*/  rn ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_EVT_DEV_LOSS ; 
 int CSIO_HWF_FWEVT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct csio_lnode*,int /*<<< orphan*/ ,struct csio_rnode**,int) ; 
 scalar_t__ FUNC2 (struct csio_lnode*) ; 
 scalar_t__ FUNC3 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_lnode*,char*,struct csio_rnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csio_lnode* FUNC5 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_rnode*) ; 
 struct csio_lnode* FUNC7 (struct csio_rnode*) ; 
 int /*<<< orphan*/  n_dev_loss_tmo ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct fc_rport *rport)
{
	struct csio_rnode *rn;
	struct csio_hw *hw;
	struct csio_lnode *ln;

	rn = *((struct csio_rnode **)rport->dd_data);
	ln = FUNC7(rn);
	hw = FUNC5(ln);

	FUNC9(&hw->lock);

	/* return if driver is being removed or same rnode comes back online */
	if (FUNC2(hw) || FUNC3(rn))
		goto out;

	FUNC4(ln, "devloss timeout on rnode:%p portid:x%x flowid:x%x\n",
		    rn, rn->nport_id, FUNC6(rn));

	FUNC0(ln, n_dev_loss_tmo);

	/*
	 * enqueue devloss event to event worker thread to serialize all
	 * rnode events.
	 */
	if (FUNC1(hw, CSIO_EVT_DEV_LOSS, &rn, sizeof(rn))) {
		FUNC0(hw, n_evt_drop);
		goto out;
	}

	if (!(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
		hw->flags |= CSIO_HWF_FWEVT_PENDING;
		FUNC10(&hw->lock);
		FUNC8(&hw->evtq_work);
		return;
	}

out:
	FUNC10(&hw->lock);
}