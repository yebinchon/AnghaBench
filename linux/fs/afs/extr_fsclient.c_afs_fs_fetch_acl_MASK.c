#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  error; } ;
struct afs_fs_cursor {TYPE_2__ ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/ * out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/ * ret_acl; int /*<<< orphan*/  key; } ;
struct afs_acl {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct afs_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSFETCHACL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_RXFSFetchACL ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 scalar_t__ FUNC6 (struct afs_call*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_call*,TYPE_1__*) ; 

struct afs_acl *FUNC10(struct afs_fs_cursor *fc,
				 struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(vnode);
	__be32 *bp;

	FUNC1(",%x,{%llx:%llu},,",
	       FUNC8(fc->key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC2(net, &afs_RXFSFetchACL, 16, (21 + 6) * 4);
	if (!call) {
		fc->ac.error = -ENOMEM;
		return FUNC0(-ENOMEM);
	}

	call->key = fc->key;
	call->ret_acl = NULL;
	call->out_scb = scb;
	call->out_volsync = NULL;

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC7(FSFETCHACL);
	bp[1] = FUNC7(vnode->fid.vid);
	bp[2] = FUNC7(vnode->fid.vnode);
	bp[3] = FUNC7(vnode->fid.unique);

	FUNC4(call, fc->cbi);
	FUNC9(call, &vnode->fid);
	FUNC3(&fc->ac, call, GFP_KERNEL);
	return (struct afs_acl *)FUNC6(call, &fc->ac);
}