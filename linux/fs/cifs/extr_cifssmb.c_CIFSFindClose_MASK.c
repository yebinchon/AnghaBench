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
struct TYPE_5__ {int /*<<< orphan*/  num_fclose; } ;
struct TYPE_6__ {TYPE_1__ cifs_stats; } ;
struct cifs_tcon {TYPE_2__ stats; int /*<<< orphan*/  ses; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_7__ {scalar_t__ ByteCount; int /*<<< orphan*/  FileID; } ;
typedef  TYPE_3__ FINDCLOSE_REQ ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  SMB_COM_FIND_CLOSE2 ; 
 int FUNC0 (unsigned int const,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,struct cifs_tcon*,void**) ; 

int
FUNC5(const unsigned int xid, struct cifs_tcon *tcon,
	      const __u16 searchHandle)
{
	int rc = 0;
	FINDCLOSE_REQ *pSMB = NULL;

	FUNC1(FYI, "In CIFSSMBFindClose\n");
	rc = FUNC4(SMB_COM_FIND_CLOSE2, 1, tcon, (void **)&pSMB);

	/* no sense returning error if session restarted
		as file handle has been closed */
	if (rc == -EAGAIN)
		return 0;
	if (rc)
		return rc;

	pSMB->FileID = searchHandle;
	pSMB->ByteCount = 0;
	rc = FUNC0(xid, tcon->ses, (char *) pSMB, 0);
	FUNC2(pSMB);
	if (rc)
		FUNC1(VFS, "Send error in FindClose = %d\n", rc);

	FUNC3(&tcon->stats.cifs_stats.num_fclose);

	/* Since session is dead, search handle closed on server already */
	if (rc == -EAGAIN)
		rc = 0;

	return rc;
}