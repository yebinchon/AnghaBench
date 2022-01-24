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
struct iscsi_snack {int flags; int /*<<< orphan*/  runlength; int /*<<< orphan*/  begrun; int /*<<< orphan*/  ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  exp_statsn; } ;
struct iscsi_conn {TYPE_2__* sess; int /*<<< orphan*/  cid; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ErrorRecoveryLevel; } ;

/* Variables and functions */
 int ISCSI_FLAG_CMD_FINAL ; 
#define  ISCSI_FLAG_SNACK_TYPE_DATA_ACK 130 
 int ISCSI_FLAG_SNACK_TYPE_MASK ; 
#define  ISCSI_FLAG_SNACK_TYPE_RDATA 129 
#define  ISCSI_FLAG_SNACK_TYPE_STATUS 128 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iscsi_conn*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(
	struct iscsi_conn *conn,
	unsigned char *buf)
{
	struct iscsi_snack *hdr;

	hdr			= (struct iscsi_snack *) buf;
	hdr->flags		&= ~ISCSI_FLAG_CMD_FINAL;

	FUNC5("Got ISCSI_INIT_SNACK, ITT: 0x%08x, ExpStatSN:"
		" 0x%08x, Type: 0x%02x, BegRun: 0x%08x, RunLength: 0x%08x,"
		" CID: %hu\n", hdr->itt, hdr->exp_statsn, hdr->flags,
			hdr->begrun, hdr->runlength, conn->cid);

	if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
		FUNC6("Initiator sent SNACK request while in"
			" ErrorRecoveryLevel=0.\n");
		return FUNC1(conn, ISCSI_REASON_PROTOCOL_ERROR,
					 buf);
	}
	/*
	 * SNACK_DATA and SNACK_R2T are both 0,  so check which function to
	 * call from inside iscsi_send_recovery_datain_or_r2t().
	 */
	switch (hdr->flags & ISCSI_FLAG_SNACK_TYPE_MASK) {
	case 0:
		return FUNC3(conn, buf,
			hdr->itt,
			FUNC0(hdr->ttt),
			FUNC0(hdr->begrun),
			FUNC0(hdr->runlength));
	case ISCSI_FLAG_SNACK_TYPE_STATUS:
		return FUNC4(conn, hdr->itt,
			FUNC0(hdr->ttt),
			FUNC0(hdr->begrun), FUNC0(hdr->runlength));
	case ISCSI_FLAG_SNACK_TYPE_DATA_ACK:
		return FUNC2(conn, FUNC0(hdr->ttt),
			FUNC0(hdr->begrun),
			FUNC0(hdr->runlength));
	case ISCSI_FLAG_SNACK_TYPE_RDATA:
		/* FIXME: Support R-Data SNACK */
		FUNC6("R-Data SNACK Not Supported.\n");
		return FUNC1(conn, ISCSI_REASON_PROTOCOL_ERROR,
					 buf);
	default:
		FUNC6("Unknown SNACK type 0x%02x, protocol"
			" error.\n", hdr->flags & 0x0f);
		return FUNC1(conn, ISCSI_REASON_PROTOCOL_ERROR,
					 buf);
	}

	return 0;
}