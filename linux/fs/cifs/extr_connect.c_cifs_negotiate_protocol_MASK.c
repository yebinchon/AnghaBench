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
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* negotiate ) (unsigned int const,struct cifs_ses*) ;int /*<<< orphan*/  (* need_neg ) (struct TCP_Server_Info*) ;} ;

/* Variables and functions */
 scalar_t__ CifsGood ; 
 scalar_t__ CifsNeedNegotiate ; 
 int EHOSTDOWN ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*) ; 
 int FUNC3 (unsigned int const,struct cifs_ses*) ; 

int
FUNC4(const unsigned int xid, struct cifs_ses *ses)
{
	int rc = 0;
	struct TCP_Server_Info *server = ses->server;

	if (!server->ops->need_neg || !server->ops->negotiate)
		return -ENOSYS;

	/* only send once per connect */
	if (!server->ops->need_neg(server))
		return 0;

	rc = server->ops->negotiate(xid, ses);
	if (rc == 0) {
		FUNC0(&GlobalMid_Lock);
		if (server->tcpStatus == CifsNeedNegotiate)
			server->tcpStatus = CifsGood;
		else
			rc = -EHOSTDOWN;
		FUNC1(&GlobalMid_Lock);
	}

	return rc;
}