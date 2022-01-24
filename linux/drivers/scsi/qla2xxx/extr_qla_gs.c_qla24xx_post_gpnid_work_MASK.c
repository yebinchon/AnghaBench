#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {int /*<<< orphan*/  dpc_flags; scalar_t__ vp_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__ gpnid; } ;
struct qla_work_evt {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  port_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA_EVT_GPNID ; 
 int QLA_FUNCTION_FAILED ; 
 int /*<<< orphan*/  UNLOADING ; 
 int /*<<< orphan*/  VPORT_DELETE ; 
 struct qla_work_evt* FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scsi_qla_host*,struct qla_work_evt*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct scsi_qla_host *vha, port_id_t *id)
{
	struct qla_work_evt *e;

	if (FUNC2(UNLOADING, &vha->dpc_flags) ||
	    (vha->vp_idx && FUNC2(VPORT_DELETE, &vha->dpc_flags)))
		return 0;

	e = FUNC0(vha, QLA_EVT_GPNID);
	if (!e)
		return QLA_FUNCTION_FAILED;

	e->u.gpnid.id = *id;
	return FUNC1(vha, e);
}