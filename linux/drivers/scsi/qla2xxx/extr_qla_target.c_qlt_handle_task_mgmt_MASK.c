#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct scsi_lun {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  sess_lock; TYPE_1__* tgt_ops; } ;
struct qla_hw_data {TYPE_3__ tgt; } ;
struct fc_port {scalar_t__ deleted; } ;
struct TYPE_10__ {int task_mgmt_flags; int /*<<< orphan*/  lun; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_id; } ;
struct TYPE_11__ {TYPE_4__ fcp_cmnd; TYPE_2__ fcp_hdr; } ;
struct TYPE_12__ {TYPE_5__ isp24; } ;
struct atio_from_isp {TYPE_6__ u; } ;
struct TYPE_7__ {struct fc_port* (* find_sess_by_s_id ) (struct scsi_qla_host*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (struct fc_port*,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fc_port* FUNC4 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_qla_host *vha, void *iocb)
{
	struct atio_from_isp *a = (struct atio_from_isp *)iocb;
	struct qla_hw_data *ha = vha->hw;
	struct fc_port *sess;
	u64 unpacked_lun;
	int fn;
	unsigned long flags;

	fn = a->u.isp24.fcp_cmnd.task_mgmt_flags;

	FUNC2(&ha->tgt.sess_lock, flags);
	sess = ha->tgt.tgt_ops->find_sess_by_s_id(vha,
	    a->u.isp24.fcp_hdr.s_id);
	FUNC3(&ha->tgt.sess_lock, flags);

	unpacked_lun =
	    FUNC1((struct scsi_lun *)&a->u.isp24.fcp_cmnd.lun);

	if (sess == NULL || sess->deleted)
		return -EFAULT;

	return FUNC0(sess, unpacked_lun, fn, iocb, 0);
}