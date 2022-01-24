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
 int FSSTOREDATA ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData_as_Status ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (struct afs_fs_cursor*,struct iattr*,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC7 (struct afs_vnode*) ; 
 int FUNC8 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,struct iattr*) ; 

__attribute__((used)) static int FUNC13(struct afs_fs_cursor *fc, struct iattr *attr,
			       struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC7(vnode);
	__be32 *bp;

	FUNC1(",%x,{%llx:%llu},,",
	       FUNC10(fc->key), vnode->fid.vid, vnode->fid.vnode);

	FUNC0(attr->ia_valid & ATTR_SIZE);
	if (attr->ia_size >> 32)
		return FUNC3(fc, attr, scb);

	call = FUNC2(net, &afs_RXFSStoreData_as_Status,
				   (4 + 6 + 3) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_scb = scb;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC9(FSSTOREDATA);
	*bp++ = FUNC9(vnode->fid.vid);
	*bp++ = FUNC9(vnode->fid.vnode);
	*bp++ = FUNC9(vnode->fid.unique);

	FUNC12(&bp, attr);

	*bp++ = FUNC9(attr->ia_size);		/* position of start of write */
	*bp++ = 0;				/* size of write */
	*bp++ = FUNC9(attr->ia_size);		/* new file length */

	FUNC6(call, fc->cbi);
	FUNC11(call, &vnode->fid);
	FUNC5(call, fc);
	FUNC4(&fc->ac, call, GFP_NOFS);
	return FUNC8(call, &fc->ac);
}