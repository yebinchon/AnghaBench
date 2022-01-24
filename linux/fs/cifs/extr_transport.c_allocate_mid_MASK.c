#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {scalar_t__ Command; } ;
struct mid_q_entry {int /*<<< orphan*/  qhead; } ;
struct cifs_ses {scalar_t__ status; TYPE_1__* server; } ;
struct TYPE_2__ {scalar_t__ tcpStatus; int /*<<< orphan*/  pending_mid_q; } ;

/* Variables and functions */
 struct mid_q_entry* FUNC0 (struct smb_hdr*,TYPE_1__*) ; 
 scalar_t__ CifsExiting ; 
 scalar_t__ CifsNeedReconnect ; 
 scalar_t__ CifsNew ; 
 int EAGAIN ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 scalar_t__ SMB_COM_LOGOFF_ANDX ; 
 scalar_t__ SMB_COM_NEGOTIATE ; 
 scalar_t__ SMB_COM_SESSION_SETUP_ANDX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cifs_ses *ses, struct smb_hdr *in_buf,
			struct mid_q_entry **ppmidQ)
{
	if (ses->server->tcpStatus == CifsExiting) {
		return -ENOENT;
	}

	if (ses->server->tcpStatus == CifsNeedReconnect) {
		FUNC1(FYI, "tcp session dead - return to caller to retry\n");
		return -EAGAIN;
	}

	if (ses->status == CifsNew) {
		if ((in_buf->Command != SMB_COM_SESSION_SETUP_ANDX) &&
			(in_buf->Command != SMB_COM_NEGOTIATE))
			return -EAGAIN;
		/* else ok - we are setting up session */
	}

	if (ses->status == CifsExiting) {
		/* check if SMB session is bad because we are setting it up */
		if (in_buf->Command != SMB_COM_LOGOFF_ANDX)
			return -EAGAIN;
		/* else ok - we are shutting down session */
	}

	*ppmidQ = FUNC0(in_buf, ses->server);
	if (*ppmidQ == NULL)
		return -ENOMEM;
	FUNC3(&GlobalMid_Lock);
	FUNC2(&(*ppmidQ)->qhead, &ses->server->pending_mid_q);
	FUNC4(&GlobalMid_Lock);
	return 0;
}