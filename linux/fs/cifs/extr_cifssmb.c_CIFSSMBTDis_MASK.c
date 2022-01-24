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
struct smb_hdr {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; scalar_t__ need_reconnect; } ;
struct TYPE_2__ {scalar_t__ need_reconnect; int /*<<< orphan*/ * server; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  SMB_COM_TREE_DISCONNECT ; 
 int FUNC0 (unsigned int const,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_hdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifs_tcon*,void**) ; 

int
FUNC4(const unsigned int xid, struct cifs_tcon *tcon)
{
	struct smb_hdr *smb_buffer;
	int rc = 0;

	FUNC1(FYI, "In tree disconnect\n");

	/* BB: do we need to check this? These should never be NULL. */
	if ((tcon->ses == NULL) || (tcon->ses->server == NULL))
		return -EIO;

	/*
	 * No need to return error on this operation if tid invalidated and
	 * closed on server already e.g. due to tcp session crashing. Also,
	 * the tcon is no longer on the list, so no need to take lock before
	 * checking this.
	 */
	if ((tcon->need_reconnect) || (tcon->ses->need_reconnect))
		return 0;

	rc = FUNC3(SMB_COM_TREE_DISCONNECT, 0, tcon,
			    (void **)&smb_buffer);
	if (rc)
		return rc;

	rc = FUNC0(xid, tcon->ses, (char *)smb_buffer, 0);
	FUNC2(smb_buffer);
	if (rc)
		FUNC1(FYI, "Tree disconnect failed %d\n", rc);

	/* No need to return error on this operation if tid invalidated and
	   closed on server already e.g. due to tcp session crashing */
	if (rc == -EAGAIN)
		rc = 0;

	return rc;
}