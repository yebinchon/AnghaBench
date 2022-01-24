#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcm_qla2xxx_lport {int dummy; } ;
struct se_session {int dummy; } ;
struct qla_tgt {struct qla_hw_data* ha; } ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
struct fc_port {struct se_session* se_sess; struct qla_tgt* tgt; } ;
struct TYPE_4__ {struct tcm_qla2xxx_lport* target_lport_ptr; } ;
struct TYPE_5__ {TYPE_1__ vha_tgt; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_session*) ; 

__attribute__((used)) static void FUNC7(struct fc_port *sess)
{
	struct qla_tgt *tgt = sess->tgt;
	struct qla_hw_data *ha = tgt->ha;
	scsi_qla_host_t *vha = FUNC3(ha->pdev);
	struct se_session *se_sess;
	struct tcm_qla2xxx_lport *lport;

	FUNC0(FUNC2());

	se_sess = sess->se_sess;
	if (!se_sess) {
		FUNC4("struct fc_port->se_sess is NULL\n");
		FUNC1();
		return;
	}

	lport = vha->vha_tgt.target_lport_ptr;
	if (!lport) {
		FUNC4("Unable to locate struct tcm_qla2xxx_lport\n");
		FUNC1();
		return;
	}
	FUNC6(se_sess);

	FUNC5(se_sess);
}