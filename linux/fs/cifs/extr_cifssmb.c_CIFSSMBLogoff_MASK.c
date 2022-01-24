#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cifs_ses {int /*<<< orphan*/  session_mutex; int /*<<< orphan*/  Suid; TYPE_3__* server; scalar_t__ need_reconnect; } ;
struct TYPE_7__ {scalar_t__ sign; } ;
struct TYPE_5__ {int /*<<< orphan*/  Uid; int /*<<< orphan*/  Flags2; int /*<<< orphan*/  Mid; } ;
struct TYPE_6__ {int AndXCommand; TYPE_1__ hdr; } ;
typedef  TYPE_2__ LOGOFF_ANDX_REQ ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  SMBFLG2_SECURITY_SIGNATURE ; 
 int /*<<< orphan*/  SMB_COM_LOGOFF_ANDX ; 
 int FUNC0 (unsigned int const,struct cifs_ses*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void**) ; 

int
FUNC7(const unsigned int xid, struct cifs_ses *ses)
{
	LOGOFF_ANDX_REQ *pSMB;
	int rc = 0;

	FUNC1(FYI, "In SMBLogoff for session disconnect\n");

	/*
	 * BB: do we need to check validity of ses and server? They should
	 * always be valid since we have an active reference. If not, that
	 * should probably be a BUG()
	 */
	if (!ses || !ses->server)
		return -EIO;

	FUNC4(&ses->session_mutex);
	if (ses->need_reconnect)
		goto session_already_dead; /* no need to send SMBlogoff if uid
					      already closed due to reconnect */
	rc = FUNC6(SMB_COM_LOGOFF_ANDX, 2, NULL, (void **)&pSMB);
	if (rc) {
		FUNC5(&ses->session_mutex);
		return rc;
	}

	pSMB->hdr.Mid = FUNC3(ses->server);

	if (ses->server->sign)
		pSMB->hdr.Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

	pSMB->hdr.Uid = ses->Suid;

	pSMB->AndXCommand = 0xFF;
	rc = FUNC0(xid, ses, (char *) pSMB, 0);
	FUNC2(pSMB);
session_already_dead:
	FUNC5(&ses->session_mutex);

	/* if session dead then we do not need to do ulogoff,
		since server closed smb session, no sense reporting
		error */
	if (rc == -EAGAIN)
		rc = 0;
	return rc;
}