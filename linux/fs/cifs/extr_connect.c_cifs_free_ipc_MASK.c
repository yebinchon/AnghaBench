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
struct cifs_tcon {int dummy; } ;
struct cifs_ses {struct cifs_tcon* tcon_ipc; TYPE_1__* server; } ;
struct TYPE_4__ {int (* tree_disconnect ) (int,struct cifs_tcon*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 (int,struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_tcon*) ; 

__attribute__((used)) static int
FUNC5(struct cifs_ses *ses)
{
	int rc = 0, xid;
	struct cifs_tcon *tcon = ses->tcon_ipc;

	if (tcon == NULL)
		return 0;

	if (ses->server->ops->tree_disconnect) {
		xid = FUNC2();
		rc = ses->server->ops->tree_disconnect(xid, tcon);
		FUNC1(xid);
	}

	if (rc)
		FUNC0(FYI, "failed to disconnect IPC tcon (rc=%d)\n", rc);

	FUNC4(tcon);
	ses->tcon_ipc = NULL;
	return rc;
}