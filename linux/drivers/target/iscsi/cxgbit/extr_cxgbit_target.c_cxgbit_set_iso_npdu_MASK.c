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
typedef  int u32 ;
struct iscsi_param {int /*<<< orphan*/  value; } ;
struct iscsi_conn_ops {int MaxRecvDataSegmentLength; } ;
struct iscsi_conn {TYPE_3__* sess; int /*<<< orphan*/  param_list; TYPE_1__* login; struct iscsi_conn_ops* conn_ops; } ;
struct cxgbit_sock {size_t submode; int max_iso_npdu; int /*<<< orphan*/  emss; struct iscsi_conn* conn; } ;
struct TYPE_6__ {TYPE_2__* sess_ops; } ;
struct TYPE_5__ {int MaxBurstLength; } ;
struct TYPE_4__ {scalar_t__ leading_connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGBIT_MAX_ISO_PAYLOAD ; 
 int ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  MAXBURSTLENGTH ; 
 int* cxgbit_digest_len ; 
 struct iscsi_param* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cxgbit_sock *csk)
{
	struct iscsi_conn *conn = csk->conn;
	struct iscsi_conn_ops *conn_ops = conn->conn_ops;
	struct iscsi_param *param;
	u32 mrdsl, mbl;
	u32 max_npdu, max_iso_npdu;
	u32 max_iso_payload;

	if (conn->login->leading_connection) {
		param = FUNC0(MAXBURSTLENGTH,
						  conn->param_list);
		if (!param) {
			FUNC3("param not found key %s\n", MAXBURSTLENGTH);
			return -1;
		}

		if (FUNC1(param->value, 0, &mbl) < 0)
			return -1;
	} else {
		mbl = conn->sess->sess_ops->MaxBurstLength;
	}

	mrdsl = conn_ops->MaxRecvDataSegmentLength;
	max_npdu = mbl / mrdsl;

	max_iso_payload = FUNC4(CXGBIT_MAX_ISO_PAYLOAD, csk->emss);

	max_iso_npdu = max_iso_payload /
		       (ISCSI_HDR_LEN + mrdsl +
			cxgbit_digest_len[csk->submode]);

	csk->max_iso_npdu = FUNC2(max_npdu, max_iso_npdu);

	if (csk->max_iso_npdu <= 1)
		csk->max_iso_npdu = 0;

	return 0;
}