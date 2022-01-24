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
struct afs_server {int /*<<< orphan*/  addr6_link; int /*<<< orphan*/  addr4_link; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  uuid_rb; int /*<<< orphan*/  usage; struct afs_server* gc_next; } ;
struct afs_net {int /*<<< orphan*/  fs_addr_lock; int /*<<< orphan*/  fs_lock; int /*<<< orphan*/  fs_servers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_net*,struct afs_server*) ; 
 int /*<<< orphan*/  afs_server_trace_gc ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_server*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct afs_net *net, struct afs_server *gc_list)
{
	struct afs_server *server;
	bool deleted;
	int usage;

	while ((server = gc_list)) {
		gc_list = server->gc_next;

		FUNC6(&net->fs_lock);
		usage = 1;
		deleted = FUNC1(&server->usage, &usage, 0);
		FUNC5(server, usage, afs_server_trace_gc);
		if (deleted) {
			FUNC4(&server->uuid_rb, &net->fs_servers);
			FUNC2(&server->proc_link);
		}
		FUNC7(&net->fs_lock);

		if (deleted) {
			FUNC6(&net->fs_addr_lock);
			if (!FUNC3(&server->addr4_link))
				FUNC2(&server->addr4_link);
			if (!FUNC3(&server->addr6_link))
				FUNC2(&server->addr6_link);
			FUNC7(&net->fs_addr_lock);
			FUNC0(net, server);
		}
	}
}