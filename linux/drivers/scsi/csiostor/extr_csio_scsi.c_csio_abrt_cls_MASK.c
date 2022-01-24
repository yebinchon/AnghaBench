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
struct scsi_cmnd {int dummy; } ;
struct csio_scsim {int dummy; } ;
struct csio_lnode {struct csio_hw* hwp; } ;
struct csio_ioreq {struct csio_lnode* lnode; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_scsim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_ABORT ; 
 int /*<<< orphan*/  SCSI_CLOSE ; 
 int FUNC1 (struct csio_hw*,struct csio_ioreq*,int /*<<< orphan*/ ) ; 
 struct csio_scsim* FUNC2 (struct csio_hw*) ; 
 int FUNC3 (struct csio_lnode*) ; 
 struct scsi_cmnd* FUNC4 (struct csio_ioreq*) ; 
 int /*<<< orphan*/  n_abrt_busy_error ; 
 int /*<<< orphan*/  n_abrt_race_comp ; 
 int /*<<< orphan*/  n_cls_busy_error ; 

__attribute__((used)) static void
FUNC5(struct csio_ioreq *ioreq, struct scsi_cmnd *scmnd)
{
	struct csio_lnode *ln = ioreq->lnode;
	struct csio_hw *hw = ln->hwp;
	int ready = 0;
	struct csio_scsim *scsim = FUNC2(hw);
	int rv;

	if (FUNC4(ioreq) != scmnd) {
		FUNC0(scsim, n_abrt_race_comp);
		return;
	}

	ready = FUNC3(ln);

	rv = FUNC1(hw, ioreq, (ready ? SCSI_ABORT : SCSI_CLOSE));
	if (rv != 0) {
		if (ready)
			FUNC0(scsim, n_abrt_busy_error);
		else
			FUNC0(scsim, n_cls_busy_error);
	}
}