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
typedef  int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_2__ {scalar_t__ eeh_busy; } ;
struct qla_hw_data {int portnum; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLA8044_CRB_DRV_ACTIVE_INDEX ; 
 int /*<<< orphan*/  QLA8044_CRB_DRV_STATE_INDEX ; 
 int FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC1(struct scsi_qla_host *vha)
{
	uint32_t drv_state, drv_active;
	int rval;
	struct qla_hw_data *ha = vha->hw;

	drv_active = FUNC0(vha, QLA8044_CRB_DRV_ACTIVE_INDEX);
	drv_state = FUNC0(vha, QLA8044_CRB_DRV_STATE_INDEX);

	rval = drv_state & (1 << ha->portnum);

	if (ha->flags.eeh_busy && drv_active)
		rval = 1;
	return rval;
}