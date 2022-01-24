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
struct csio_scsi_qset {int /*<<< orphan*/  iq_idx; int /*<<< orphan*/  eq_idx; int /*<<< orphan*/  intr_idx; } ;
struct csio_scsi_cpu_info {int max_cpus; } ;
struct csio_mgmtm {int /*<<< orphan*/  iq_idx; int /*<<< orphan*/  eq_idx; } ;
struct csio_hw {int flags; scalar_t__ intr_mode; int num_pports; struct csio_scsi_qset** sqset; struct csio_scsi_cpu_info* scsi_cpu_info; TYPE_1__* pport; int /*<<< orphan*/  fwevt_iq_idx; int /*<<< orphan*/  intr_iq_idx; } ;
struct TYPE_2__ {int portid; } ;

/* Variables and functions */
 int CSIO_HWF_Q_FW_ALLOCED ; 
 scalar_t__ CSIO_IM_MSIX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 struct csio_mgmtm* FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int) ; 
 int FUNC4 (struct csio_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct csio_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct csio_hw *hw)
{
	int i, j;
	struct csio_mgmtm *mgmtm = FUNC2(hw);
	int rv;
	struct csio_scsi_cpu_info *info;

	if (hw->flags & CSIO_HWF_Q_FW_ALLOCED)
		return 0;

	if (hw->intr_mode != CSIO_IM_MSIX) {
		rv = FUNC5(hw, NULL, hw->intr_iq_idx,
					0, hw->pport[0].portid, false, NULL);
		if (rv != 0) {
			FUNC0(hw, " Forward Interrupt IQ failed!: %d\n", rv);
			return rv;
		}
	}

	/* FW event queue */
	rv = FUNC5(hw, NULL, hw->fwevt_iq_idx,
			       FUNC1(hw),
			       hw->pport[0].portid, true, NULL);
	if (rv != 0) {
		FUNC0(hw, "FW event IQ config failed!: %d\n", rv);
		return rv;
	}

	/* Create mgmt queue */
	rv = FUNC4(hw, NULL, mgmtm->eq_idx,
			mgmtm->iq_idx, hw->pport[0].portid, NULL);

	if (rv != 0) {
		FUNC0(hw, "Mgmt EQ create failed!: %d\n", rv);
		goto err;
	}

	/* Create SCSI queues */
	for (i = 0; i < hw->num_pports; i++) {
		info = &hw->scsi_cpu_info[i];

		for (j = 0; j < info->max_cpus; j++) {
			struct csio_scsi_qset *sqset = &hw->sqset[i][j];

			rv = FUNC5(hw, NULL, sqset->iq_idx,
					       sqset->intr_idx, i, false, NULL);
			if (rv != 0) {
				FUNC0(hw,
				   "SCSI module IQ config failed [%d][%d]:%d\n",
				   i, j, rv);
				goto err;
			}
			rv = FUNC4(hw, NULL, sqset->eq_idx,
					       sqset->iq_idx, i, NULL);
			if (rv != 0) {
				FUNC0(hw,
				   "SCSI module EQ config failed [%d][%d]:%d\n",
				   i, j, rv);
				goto err;
			}
		} /* for all CPUs */
	} /* For all ports */

	hw->flags |= CSIO_HWF_Q_FW_ALLOCED;
	return 0;
err:
	FUNC3(hw, true);
	return -EINVAL;
}