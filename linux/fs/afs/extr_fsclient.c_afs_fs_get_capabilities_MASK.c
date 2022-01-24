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
struct key {int dummy; } ;
struct afs_server {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_call {unsigned int server_index; int upgrade; int async; int /*<<< orphan*/ * request; int /*<<< orphan*/  max_lifespan; int /*<<< orphan*/  server; struct key* key; } ;
struct afs_addr_cursor {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_PROBE_MAX_LIFESPAN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct afs_call* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSGETCAPABILITIES ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_RXFSGetCapabilities ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_addr_cursor*,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_server_trace_get_caps ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 

struct afs_call *FUNC7(struct afs_net *net,
					 struct afs_server *server,
					 struct afs_addr_cursor *ac,
					 struct key *key,
					 unsigned int server_index)
{
	struct afs_call *call;
	__be32 *bp;

	FUNC1("");

	call = FUNC2(net, &afs_RXFSGetCapabilities, 1 * 4, 16 * 4);
	if (!call)
		return FUNC0(-ENOMEM);

	call->key = key;
	call->server = FUNC3(server, afs_server_trace_get_caps);
	call->server_index = server_index;
	call->upgrade = true;
	call->async = true;
	call->max_lifespan = AFS_PROBE_MAX_LIFESPAN;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC5(FSGETCAPABILITIES);

	/* Can't take a ref on server */
	FUNC6(call, NULL);
	FUNC4(ac, call, GFP_NOFS);
	return call;
}