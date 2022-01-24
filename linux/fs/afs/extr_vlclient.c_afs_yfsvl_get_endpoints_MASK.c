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
typedef  int /*<<< orphan*/  uuid_t ;
struct in6_addr {int dummy; } ;
struct afs_vl_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  key; TYPE_1__* cell; } ;
struct afs_net {int dummy; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  max_lifespan; int /*<<< orphan*/ * ret_alist; int /*<<< orphan*/  key; } ;
struct afs_addr_list {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct afs_net* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VL_MAX_LIFESPAN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct afs_addr_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  YFS_SERVER_UUID ; 
 int /*<<< orphan*/  YVLGETENDPOINTS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_YFSVLGetEndpoints ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_call*) ; 

struct afs_addr_list *FUNC8(struct afs_vl_cursor *vc,
					      const uuid_t *uuid)
{
	struct afs_call *call;
	struct afs_net *net = vc->cell->net;
	__be32 *bp;

	FUNC1("");

	call = FUNC2(net, &afs_YFSVLGetEndpoints,
				   sizeof(__be32) * 2 + sizeof(*uuid),
				   sizeof(struct in6_addr) + sizeof(__be32) * 3);
	if (!call)
		return FUNC0(-ENOMEM);

	call->key = vc->key;
	call->ret_alist = NULL;
	call->max_lifespan = AFS_VL_MAX_LIFESPAN;

	/* Marshall the parameters */
	bp = call->request;
	*bp++ = FUNC5(YVLGETENDPOINTS);
	*bp++ = FUNC5(YFS_SERVER_UUID);
	FUNC6(bp, uuid, sizeof(*uuid)); /* Type opr_uuid */

	FUNC7(call);
	FUNC3(&vc->ac, call, GFP_KERNEL);
	return (struct afs_addr_list *)FUNC4(call, &vc->ac);
}