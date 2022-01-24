#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iscsi_task {TYPE_2__* hdr; TYPE_1__* sc; struct iscsi_conn* conn; } ;
struct iscsi_session {TYPE_3__* tt; } ;
struct iscsi_r2t_info {scalar_t__ data_count; scalar_t__ sent; scalar_t__ data_offset; scalar_t__ datasn; } ;
struct iscsi_data {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct TYPE_6__ {int (* xmit_pdu ) (struct iscsi_task*) ;int (* alloc_pdu ) (struct iscsi_task*,int /*<<< orphan*/ ) ;int (* init_pdu ) (struct iscsi_task*,scalar_t__,scalar_t__) ;} ;
struct TYPE_5__ {scalar_t__ itt; } ;
struct TYPE_4__ {scalar_t__ sc_data_direction; } ;

/* Variables and functions */
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,char*,...) ; 
 int /*<<< orphan*/  ISCSI_ERR_XMIT_FAILED ; 
 int /*<<< orphan*/  ISCSI_OP_SCSI_DATA_OUT ; 
 scalar_t__ RESERVED_ITT ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_task*,struct iscsi_r2t_info*,struct iscsi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_task*) ; 
 struct iscsi_r2t_info* FUNC4 (struct iscsi_task*) ; 
 int FUNC5 (struct iscsi_task*) ; 
 int FUNC6 (struct iscsi_task*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iscsi_task*,scalar_t__,scalar_t__) ; 

int FUNC8(struct iscsi_task *task)
{
	struct iscsi_conn *conn = task->conn;
	struct iscsi_session *session = conn->session;
	struct iscsi_r2t_info *r2t;
	int rc = 0;

flush:
	/* Flush any pending data first. */
	rc = session->tt->xmit_pdu(task);
	if (rc < 0)
		return rc;

	/* mgmt command */
	if (!task->sc) {
		if (task->hdr->itt == RESERVED_ITT)
			FUNC3(task);
		return 0;
	}

	/* Are we done already? */
	if (task->sc->sc_data_direction != DMA_TO_DEVICE)
		return 0;

	r2t = FUNC4(task);
	if (r2t == NULL) {
		/* Waiting for more R2Ts to arrive. */
		FUNC0(conn, "no R2Ts yet\n");
		return 0;
	}

	rc = conn->session->tt->alloc_pdu(task, ISCSI_OP_SCSI_DATA_OUT);
	if (rc)
		return rc;
	FUNC2(task, r2t, (struct iscsi_data *) task->hdr);

	FUNC0(conn, "sol dout %p [dsn %d itt 0x%x doff %d dlen %d]\n",
		      r2t, r2t->datasn - 1, task->hdr->itt,
		      r2t->data_offset + r2t->sent, r2t->data_count);

	rc = conn->session->tt->init_pdu(task, r2t->data_offset + r2t->sent,
					 r2t->data_count);
	if (rc) {
		FUNC1(conn, ISCSI_ERR_XMIT_FAILED);
		return rc;
	}

	r2t->sent += r2t->data_count;
	goto flush;
}