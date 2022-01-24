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
typedef  int /*<<< orphan*/  uuid_t ;
struct afs_server {int /*<<< orphan*/  probe_lock; int /*<<< orphan*/  probe_wq; int /*<<< orphan*/  cb_break_lock; int /*<<< orphan*/  cb_volumes; int /*<<< orphan*/  fs_lock; scalar_t__ update_at; int /*<<< orphan*/  uuid; int /*<<< orphan*/  addr_version; int /*<<< orphan*/  addresses; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  usage; } ;
struct afs_net {int dummy; } ;
struct afs_addr_list {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct afs_addr_list*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_net*) ; 
 int /*<<< orphan*/  afs_server_debug_id ; 
 int /*<<< orphan*/  afs_server_trace_alloc ; 
 scalar_t__ afs_server_update_delay ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 struct afs_server* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct afs_server*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct afs_server *FUNC13(struct afs_net *net,
					   const uuid_t *uuid,
					   struct afs_addr_list *alist)
{
	struct afs_server *server;

	FUNC2("");

	server = FUNC9(sizeof(struct afs_server), GFP_KERNEL);
	if (!server)
		goto enomem;

	FUNC6(&server->usage, 1);
	server->debug_id = FUNC5(&afs_server_debug_id);
	FUNC1(server->addresses, alist);
	server->addr_version = alist->version;
	server->uuid = *uuid;
	server->update_at = FUNC8() + afs_server_update_delay;
	FUNC10(&server->fs_lock);
	FUNC0(&server->cb_volumes);
	FUNC10(&server->cb_break_lock);
	FUNC7(&server->probe_wq);
	FUNC11(&server->probe_lock);

	FUNC4(net);
	FUNC12(server, 1, afs_server_trace_alloc);
	FUNC3(" = %p", server);
	return server;

enomem:
	FUNC3(" = NULL [nomem]");
	return NULL;
}