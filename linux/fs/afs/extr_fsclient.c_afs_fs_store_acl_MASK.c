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
struct TYPE_4__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_5__ {int error; } ;
struct afs_fs_cursor {TYPE_2__ ac; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/ * out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
struct afs_acl {size_t size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 size_t FSSTOREACL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  afs_RXFSStoreACL ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC3 (struct afs_vnode*) ; 
 int FUNC4 (struct afs_call*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC9 (size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*,TYPE_1__*) ; 

int FUNC11(struct afs_fs_cursor *fc, const struct afs_acl *acl,
		     struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC3(vnode);
	size_t size;
	__be32 *bp;

	FUNC0(",%x,{%llx:%llu},,",
	       FUNC6(fc->key), vnode->fid.vid, vnode->fid.vnode);

	size = FUNC9(acl->size, 4);
	call = FUNC1(net, &afs_RXFSStoreACL,
				   5 * 4 + size, (21 + 6) * 4);
	if (!call) {
		fc->ac.error = -ENOMEM;
		return -ENOMEM;
	}

	call->key = fc->key;
	call->out_scb = scb;
	call->out_volsync = NULL;

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC5(FSSTOREACL);
	bp[1] = FUNC5(vnode->fid.vid);
	bp[2] = FUNC5(vnode->fid.vnode);
	bp[3] = FUNC5(vnode->fid.unique);
	bp[4] = FUNC5(acl->size);
	FUNC7(&bp[5], acl->data, acl->size);
	if (acl->size != size)
		FUNC8((void *)&bp[5] + acl->size, 0, size - acl->size);

	FUNC10(call, &vnode->fid);
	FUNC2(&fc->ac, call, GFP_KERNEL);
	return FUNC4(call, &fc->ac);
}