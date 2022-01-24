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
struct csio_scsim {int /*<<< orphan*/  active_q; struct csio_hw* hw; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CSIO_SCSI_ABORT_Q_POLL_MS ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*) ; 
 int FUNC3 (struct csio_scsim*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_scsim*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct csio_scsim *scm, bool abort)
{
	struct csio_hw *hw = scm->hw;
	int rv = 0;
	int count = FUNC1(60 * 1000, CSIO_SCSI_ABORT_Q_POLL_MS);

	/* No I/Os pending */
	if (FUNC5(&scm->active_q))
		return 0;

	/* Wait until all active I/Os are completed */
	while (!FUNC5(&scm->active_q) && count--) {
		FUNC8(&hw->lock);
		FUNC6(CSIO_SCSI_ABORT_Q_POLL_MS);
		FUNC7(&hw->lock);
	}

	/* all I/Os completed */
	if (FUNC5(&scm->active_q))
		return 0;

	/* Else abort */
	if (abort) {
		rv = FUNC3(scm, &scm->active_q, 30000);
		if (rv == 0)
			return rv;
		FUNC2(hw, "Some I/O aborts timed out, cleaning up..\n");
	}

	FUNC4(scm, &scm->active_q);

	FUNC0(FUNC5(&scm->active_q));

	return rv;
}