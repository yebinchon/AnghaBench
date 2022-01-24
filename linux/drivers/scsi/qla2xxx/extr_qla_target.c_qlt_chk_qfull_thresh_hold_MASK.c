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
typedef  int /*<<< orphan*/  uint8_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_qpair {int dummy; } ;
struct TYPE_2__ {scalar_t__ num_pend_cmds; } ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; TYPE_1__ tgt; } ;
struct atio_from_isp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  qla_sam_status ; 
 int /*<<< orphan*/  FUNC1 (struct qla_qpair*,struct atio_from_isp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct scsi_qla_host *vha, struct qla_qpair *qpair,
	struct atio_from_isp *atio, uint8_t ha_locked)
{
	struct qla_hw_data *ha = vha->hw;
	unsigned long flags;

	if (ha->tgt.num_pend_cmds < FUNC0(ha))
		return 0;

	if (!ha_locked)
		FUNC2(&ha->hardware_lock, flags);
	FUNC1(qpair, atio, qla_sam_status);
	if (!ha_locked)
		FUNC3(&ha->hardware_lock, flags);

	return 1;
}