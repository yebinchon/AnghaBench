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
typedef  int u32 ;
struct iattr {int ia_valid; int ia_size; } ;
struct TYPE_2__ {int vid; int vnode; int unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATTR_SIZE ; 
 int ENOMEM ; 
 int FSSTOREDATA64 ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData64_as_Status ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC6 (struct afs_vnode*) ; 
 int FUNC7 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,struct iattr*) ; 

__attribute__((used)) static int FUNC12(struct afs_fs_cursor *fc, struct iattr *attr,
				 struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC6(vnode);
	__be32 *bp;

	FUNC1(",%x,{%llx:%llu},,",
	       FUNC9(fc->key), vnode->fid.vid, vnode->fid.vnode);

	FUNC0(attr->ia_valid & ATTR_SIZE);

	call = FUNC2(net, &afs_RXFSStoreData64_as_Status,
				   (4 + 6 + 3 * 2) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_scb = scb;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC8(FSSTOREDATA64);
	*bp++ = FUNC8(vnode->fid.vid);
	*bp++ = FUNC8(vnode->fid.vnode);
	*bp++ = FUNC8(vnode->fid.unique);

	FUNC11(&bp, attr);

	*bp++ = FUNC8(attr->ia_size >> 32);	/* position of start of write */
	*bp++ = FUNC8((u32) attr->ia_size);
	*bp++ = 0;				/* size of write */
	*bp++ = 0;
	*bp++ = FUNC8(attr->ia_size >> 32);	/* new file length */
	*bp++ = FUNC8((u32) attr->ia_size);

	FUNC5(call, fc->cbi);
	FUNC10(call, &vnode->fid);
	FUNC4(call, fc);
	FUNC3(&fc->ac, call, GFP_NOFS);
	return FUNC7(call, &fc->ac);
}