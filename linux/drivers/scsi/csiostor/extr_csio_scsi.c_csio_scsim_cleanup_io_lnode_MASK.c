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
struct csio_scsim {struct csio_hw* hw; } ;
struct csio_scsi_level_data {struct csio_lnode* lnode; int /*<<< orphan*/  level; } ;
struct csio_lnode {int /*<<< orphan*/  cmpl_q; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CSIO_LEV_LNODE ; 
 int /*<<< orphan*/  CSIO_SCSI_ABORT_Q_POLL_MS ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*,...) ; 
 int FUNC4 (struct csio_scsim*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_scsim*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_scsim*,struct csio_scsi_level_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct csio_scsim *scm, struct csio_lnode *ln)
{
	struct csio_hw *hw = scm->hw;
	struct csio_scsi_level_data sld;
	int rv;
	int count = FUNC1(60 * 1000, CSIO_SCSI_ABORT_Q_POLL_MS);

	FUNC3(hw, "Gathering all SCSI I/Os on lnode %p\n", ln);

	sld.level = CSIO_LEV_LNODE;
	sld.lnode = ln;
	FUNC2(&ln->cmpl_q);
	FUNC6(scm, &sld, &ln->cmpl_q);

	/* No I/Os pending on this lnode  */
	if (FUNC7(&ln->cmpl_q))
		return 0;

	/* Wait until all active I/Os on this lnode are completed */
	while (!FUNC7(&ln->cmpl_q) && count--) {
		FUNC10(&hw->lock);
		FUNC8(CSIO_SCSI_ABORT_Q_POLL_MS);
		FUNC9(&hw->lock);
	}

	/* all I/Os completed */
	if (FUNC7(&ln->cmpl_q))
		return 0;

	FUNC3(hw, "Some I/Os pending on ln:%p, aborting them..\n", ln);

	/* I/Os are pending, abort them */
	rv = FUNC4(scm, &ln->cmpl_q, 30000);
	if (rv != 0) {
		FUNC3(hw, "Some I/O aborts timed out, cleaning up..\n");
		FUNC5(scm, &ln->cmpl_q);
	}

	FUNC0(FUNC7(&ln->cmpl_q));

	return rv;
}