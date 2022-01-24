#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct afs_server {int /*<<< orphan*/  rcu; int /*<<< orphan*/  usage; int /*<<< orphan*/  probe_outstanding; int /*<<< orphan*/  flags; int /*<<< orphan*/  addresses; } ;
struct afs_net {int dummy; } ;
struct afs_addr_list {int /*<<< orphan*/  preferred; } ;
struct afs_addr_cursor {int /*<<< orphan*/  error; int /*<<< orphan*/  index; struct afs_addr_list* alist; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_MAY_HAVE_CB ; 
 int /*<<< orphan*/  FUNC0 (struct afs_net*) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_net*,struct afs_server*,struct afs_addr_cursor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  afs_server_rcu ; 
 int /*<<< orphan*/  afs_server_trace_destroy ; 
 int /*<<< orphan*/  afs_server_trace_give_up_cb ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct afs_addr_list* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_server*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(struct afs_net *net, struct afs_server *server)
{
	struct afs_addr_list *alist = FUNC4(server->addresses);
	struct afs_addr_cursor ac = {
		.alist	= alist,
		.index	= alist->preferred,
		.error	= 0,
	};

	FUNC6(server, FUNC2(&server->usage),
			 afs_server_trace_give_up_cb);

	if (FUNC5(AFS_SERVER_FL_MAY_HAVE_CB, &server->flags))
		FUNC1(net, server, &ac, NULL);

	FUNC7(&server->probe_outstanding,
		       FUNC2(&server->probe_outstanding) == 0);

	FUNC6(server, FUNC2(&server->usage),
			 afs_server_trace_destroy);
	FUNC3(&server->rcu, afs_server_rcu);
	FUNC0(net);
}