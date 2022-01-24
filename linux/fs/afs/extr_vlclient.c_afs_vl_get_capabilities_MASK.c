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
struct afs_vlserver {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_call {unsigned int server_index; int upgrade; int async; int /*<<< orphan*/ * request; int /*<<< orphan*/  max_lifespan; int /*<<< orphan*/  vlserver; struct key* key; } ;
struct afs_addr_cursor {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_PROBE_MAX_LIFESPAN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct afs_call* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VLGETCAPABILITIES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_RXVLGetCapabilities ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vlserver*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_addr_cursor*,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_call*) ; 

struct afs_call *FUNC7(struct afs_net *net,
					 struct afs_addr_cursor *ac,
					 struct key *key,
					 struct afs_vlserver *server,
					 unsigned int server_index)
{
	struct afs_call *call;
	__be32 *bp;

	FUNC1("");

	call = FUNC2(net, &afs_RXVLGetCapabilities, 1 * 4, 16 * 4);
	if (!call)
		return FUNC0(-ENOMEM);

	call->key = key;
	call->vlserver = FUNC3(server);
	call->server_index = server_index;
	call->upgrade = true;
	call->async = true;
	call->max_lifespan = AFS_PROBE_MAX_LIFESPAN;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC5(VLGETCAPABILITIES);

	/* Can't take a ref on server */
	FUNC6(call);
	FUNC4(ac, call, GFP_KERNEL);
	return call;
}