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
struct se_session {struct fc_port* fabric_sess_ptr; } ;
struct scsi_qla_host {TYPE_2__* hw; } ;
struct fc_port {struct scsi_qla_host* vha; } ;
struct TYPE_3__ {int /*<<< orphan*/  sess_lock; } ;
struct TYPE_4__ {TYPE_1__ tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct se_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_port*) ; 

__attribute__((used)) static void FUNC5(struct se_session *se_sess)
{
	struct fc_port *sess = se_sess->fabric_sess_ptr;
	struct scsi_qla_host *vha;
	unsigned long flags;

	FUNC0(!sess);
	vha = sess->vha;

	FUNC1(&vha->hw->tgt.sess_lock, flags);
	FUNC3(se_sess);
	FUNC2(&vha->hw->tgt.sess_lock, flags);

	FUNC4(sess);
}