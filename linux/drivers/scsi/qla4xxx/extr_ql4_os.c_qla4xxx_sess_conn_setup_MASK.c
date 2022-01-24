#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  host; } ;
struct qla_conn {int dummy; } ;
struct ql4_task_data {int dummy; } ;
struct iscsi_session {struct ddb_entry* dd_data; } ;
struct iscsi_endpoint {struct iscsi_cls_conn* conn; } ;
struct iscsi_cls_session {int /*<<< orphan*/  recovery_tmo; struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_endpoint* ep; } ;
struct dev_db_entry {int dummy; } ;
struct ddb_entry {int /*<<< orphan*/  flags; struct iscsi_cls_conn* conn; int /*<<< orphan*/  fw_ddb_entry; struct iscsi_cls_session* sess; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DF_RELOGIN ; 
 int /*<<< orphan*/  DPC_RELOGIN_DEVICE ; 
 int /*<<< orphan*/  INVALID_ENTRY ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int RESET_ADAPTER ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cls_session*) ; 
 struct iscsi_cls_conn* FUNC2 (struct iscsi_cls_session*,int,int) ; 
 struct iscsi_cls_session* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dev_db_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  ql4xsess_recovery_tmo ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,struct dev_db_entry*,struct iscsi_cls_session*,struct iscsi_cls_conn*) ; 
 struct iscsi_endpoint* FUNC8 (struct scsi_qla_host*,struct dev_db_entry*) ; 
 TYPE_1__ qla4xxx_iscsi_transport ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*,struct ddb_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_qla_host*,struct ddb_entry*,struct dev_db_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct scsi_qla_host *ha,
				   struct dev_db_entry *fw_ddb_entry,
				   int is_reset, uint16_t idx)
{
	struct iscsi_cls_session *cls_sess;
	struct iscsi_session *sess;
	struct iscsi_cls_conn *cls_conn;
	struct iscsi_endpoint *ep;
	uint16_t cmds_max = 32;
	uint16_t conn_id = 0;
	uint32_t initial_cmdsn = 0;
	int ret = QLA_SUCCESS;

	struct ddb_entry *ddb_entry = NULL;

	/* Create session object, with INVALID_ENTRY,
	 * the targer_id would get set when we issue the login
	 */
	cls_sess = FUNC3(&qla4xxx_iscsi_transport, ha->host,
				       cmds_max, sizeof(struct ddb_entry),
				       sizeof(struct ql4_task_data),
				       initial_cmdsn, INVALID_ENTRY);
	if (!cls_sess) {
		ret = QLA_ERROR;
		goto exit_setup;
	}

	/*
	 * so calling module_put function to decrement the
	 * reference count.
	 **/
	FUNC5(qla4xxx_iscsi_transport.owner);
	sess = cls_sess->dd_data;
	ddb_entry = sess->dd_data;
	ddb_entry->sess = cls_sess;

	cls_sess->recovery_tmo = ql4xsess_recovery_tmo;
	FUNC4(&ddb_entry->fw_ddb_entry, fw_ddb_entry,
	       sizeof(struct dev_db_entry));

	FUNC9(ha, ddb_entry, idx);

	cls_conn = FUNC2(cls_sess, sizeof(struct qla_conn), conn_id);

	if (!cls_conn) {
		ret = QLA_ERROR;
		goto exit_setup;
	}

	ddb_entry->conn = cls_conn;

	/* Setup ep, for displaying attributes in sysfs */
	ep = FUNC8(ha, fw_ddb_entry);
	if (ep) {
		ep->conn = cls_conn;
		cls_conn->ep = ep;
	} else {
		FUNC0(FUNC6(KERN_ERR, ha, "Unable to get ep\n"));
		ret = QLA_ERROR;
		goto exit_setup;
	}

	/* Update sess/conn params */
	FUNC7(ha, fw_ddb_entry, cls_sess, cls_conn);
	FUNC10(ha, ddb_entry, fw_ddb_entry);

	if (is_reset == RESET_ADAPTER) {
		FUNC1(cls_sess);
		/* Use the relogin path to discover new devices
		 *  by short-circuting the logic of setting
		 *  timer to relogin - instead set the flags
		 *  to initiate login right away.
		 */
		FUNC11(DPC_RELOGIN_DEVICE, &ha->dpc_flags);
		FUNC11(DF_RELOGIN, &ddb_entry->flags);
	}

exit_setup:
	return ret;
}