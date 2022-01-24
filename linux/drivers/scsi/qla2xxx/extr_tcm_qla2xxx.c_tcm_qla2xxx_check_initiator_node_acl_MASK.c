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
struct tcm_qla2xxx_tpg {int /*<<< orphan*/  se_tpg; } ;
struct tcm_qla2xxx_lport {struct tcm_qla2xxx_tpg* tpg_1; } ;
struct se_session {int dummy; } ;
struct qla_tgt_cmd {int dummy; } ;
struct qla_hw_data {int cur_fw_xcb_count; } ;
struct fc_port {int dummy; } ;
struct TYPE_4__ {struct tcm_qla2xxx_lport* target_lport_ptr; } ;
struct TYPE_5__ {TYPE_1__ vha_tgt; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  port_name ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct se_session*) ; 
 int FUNC1 (struct se_session*) ; 
 int /*<<< orphan*/  TARGET_PROT_ALL ; 
 int TCM_QLA2XXX_DEFAULT_TAGS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,char*,unsigned char*) ; 
 struct se_session* FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,unsigned char*,struct fc_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcm_qla2xxx_session_cb ; 

__attribute__((used)) static int FUNC7(
	scsi_qla_host_t *vha,
	unsigned char *fc_wwpn,
	struct fc_port *qlat_sess)
{
	struct qla_hw_data *ha = vha->hw;
	struct tcm_qla2xxx_lport *lport;
	struct tcm_qla2xxx_tpg *tpg;
	struct se_session *se_sess;
	unsigned char port_name[36];
	int num_tags = (ha->cur_fw_xcb_count) ? ha->cur_fw_xcb_count :
		       TCM_QLA2XXX_DEFAULT_TAGS;

	lport = vha->vha_tgt.target_lport_ptr;
	if (!lport) {
		FUNC4("Unable to locate struct tcm_qla2xxx_lport\n");
		FUNC2();
		return -EINVAL;
	}
	/*
	 * Locate the TPG=1 reference..
	 */
	tpg = lport->tpg_1;
	if (!tpg) {
		FUNC4("Unable to locate struct tcm_qla2xxx_lport->tpg_1\n");
		return -EINVAL;
	}
	/*
	 * Format the FCP Initiator port_name into colon seperated values to
	 * match the format by tcm_qla2xxx explict ConfigFS NodeACLs.
	 */
	FUNC3(&port_name, 0, 36);
	FUNC5(port_name, sizeof(port_name), "%8phC", fc_wwpn);
	/*
	 * Locate our struct se_node_acl either from an explict NodeACL created
	 * via ConfigFS, or via running in TPG demo mode.
	 */
	se_sess = FUNC6(&tpg->se_tpg, num_tags,
				       sizeof(struct qla_tgt_cmd),
				       TARGET_PROT_ALL, port_name,
				       qlat_sess, tcm_qla2xxx_session_cb);
	if (FUNC0(se_sess))
		return FUNC1(se_sess);

	return 0;
}