#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  CreditRequest; } ;
struct smb2_write_rsp {TYPE_1__ sync_hdr; int /*<<< orphan*/  DataLength; } ;
struct mid_q_entry {int mid_state; scalar_t__ resp_buf; struct cifs_writedata* callback_data; } ;
struct cifs_writedata {scalar_t__ result; unsigned int bytes; int /*<<< orphan*/  work; int /*<<< orphan*/  offset; TYPE_3__* cfile; int /*<<< orphan*/ * mr; } ;
struct cifs_tcon {TYPE_4__* ses; int /*<<< orphan*/  tid; } ;
struct cifs_credits {int /*<<< orphan*/  instance; void* value; } ;
struct TCP_Server_Info {int /*<<< orphan*/  reconnect_instance; } ;
struct TYPE_8__ {int /*<<< orphan*/  Suid; struct TCP_Server_Info* server; } ;
struct TYPE_6__ {int /*<<< orphan*/  persistent_fid; } ;
struct TYPE_7__ {TYPE_2__ fid; int /*<<< orphan*/  tlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mid_q_entry*) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EIO ; 
 scalar_t__ ENOSPC ; 
#define  MID_REQUEST_SUBMITTED 131 
#define  MID_RESPONSE_MALFORMED 130 
#define  MID_RESPONSE_RECEIVED 129 
#define  MID_RETRY_NEEDED 128 
 int /*<<< orphan*/  SMB2_WRITE_HE ; 
 int /*<<< orphan*/  FUNC1 (struct TCP_Server_Info*,struct cifs_credits*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cifsiod_wq ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct mid_q_entry*,struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(struct mid_q_entry *mid)
{
	struct cifs_writedata *wdata = mid->callback_data;
	struct cifs_tcon *tcon = FUNC8(wdata->cfile->tlink);
	struct TCP_Server_Info *server = tcon->ses->server;
	unsigned int written;
	struct smb2_write_rsp *rsp = (struct smb2_write_rsp *)mid->resp_buf;
	struct cifs_credits credits = { .value = 0, .instance = 0 };

	switch (mid->mid_state) {
	case MID_RESPONSE_RECEIVED:
		credits.value = FUNC3(rsp->sync_hdr.CreditRequest);
		credits.instance = server->reconnect_instance;
		wdata->result = FUNC6(mid, server, 0);
		if (wdata->result != 0)
			break;

		written = FUNC4(rsp->DataLength);
		/*
		 * Mask off high 16 bits when bytes written as returned
		 * by the server is greater than bytes requested by the
		 * client. OS/2 servers are known to set incorrect
		 * CountHigh values.
		 */
		if (written > wdata->bytes)
			written &= 0xFFFF;

		if (written < wdata->bytes)
			wdata->result = -ENOSPC;
		else
			wdata->bytes = written;
		break;
	case MID_REQUEST_SUBMITTED:
	case MID_RETRY_NEEDED:
		wdata->result = -EAGAIN;
		break;
	case MID_RESPONSE_MALFORMED:
		credits.value = FUNC3(rsp->sync_hdr.CreditRequest);
		credits.instance = server->reconnect_instance;
		/* fall through */
	default:
		wdata->result = -EIO;
		break;
	}
#ifdef CONFIG_CIFS_SMB_DIRECT
	/*
	 * If this wdata has a memory registered, the MR can be freed
	 * The number of MRs available is limited, it's important to recover
	 * used MR as soon as I/O is finished. Hold MR longer in the later
	 * I/O process can possibly result in I/O deadlock due to lack of MR
	 * to send request on I/O retry
	 */
	if (wdata->mr) {
		smbd_deregister_mr(wdata->mr);
		wdata->mr = NULL;
	}
#endif
	if (wdata->result) {
		FUNC2(tcon, SMB2_WRITE_HE);
		FUNC10(0 /* no xid */,
				     wdata->cfile->fid.persistent_fid,
				     tcon->tid, tcon->ses->Suid, wdata->offset,
				     wdata->bytes, wdata->result);
	} else
		FUNC9(0 /* no xid */,
				      wdata->cfile->fid.persistent_fid,
				      tcon->tid, tcon->ses->Suid,
				      wdata->offset, wdata->bytes);

	FUNC5(cifsiod_wq, &wdata->work);
	FUNC0(mid);
	FUNC1(server, &credits, 0);
}