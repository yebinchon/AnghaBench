#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct yfs_xdr_u64 {int dummy; } ;
struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSStoreStatus {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mtime; } ;
struct afs_vnode {TYPE_1__ fid; TYPE_3__ vfs_inode; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {unsigned int first_offset; unsigned int last_to; int send_pages; int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; scalar_t__ last; scalar_t__ first; struct address_space* mapping; int /*<<< orphan*/  key; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  YFSSTOREDATA64 ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC6 (struct afs_vnode*) ; 
 int FUNC7 (struct afs_call*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  yfs_RXYFSStoreData64 ; 
 int /*<<< orphan*/  FUNC15 (struct afs_call*,int /*<<< orphan*/ *) ; 

int FUNC16(struct afs_fs_cursor *fc, struct address_space *mapping,
		      pgoff_t first, pgoff_t last,
		      unsigned offset, unsigned to,
		      struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC6(vnode);
	loff_t size, pos, i_size;
	__be32 *bp;

	FUNC1(",%x,{%llx:%llu},,",
	       FUNC9(fc->key), vnode->fid.vid, vnode->fid.vnode);

	size = (loff_t)to - (loff_t)offset;
	if (first != last)
		size += (loff_t)(last - first) << PAGE_SHIFT;
	pos = (loff_t)first << PAGE_SHIFT;
	pos += offset;

	i_size = FUNC8(&vnode->vfs_inode);
	if (pos + size > i_size)
		i_size = size + pos;

	FUNC0("size %llx, at %llx, i_size %llx",
	       (unsigned long long)size, (unsigned long long)pos,
	       (unsigned long long)i_size);

	call = FUNC2(net, &yfs_RXYFSStoreData64,
				   sizeof(__be32) +
				   sizeof(__be32) +
				   sizeof(struct yfs_xdr_YFSFid) +
				   sizeof(struct yfs_xdr_YFSStoreStatus) +
				   sizeof(struct yfs_xdr_u64) * 3,
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSVolSync));
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->mapping = mapping;
	call->first = first;
	call->last = last;
	call->first_offset = offset;
	call->last_to = to;
	call->send_pages = true;
	call->out_scb = scb;

	/* marshall the parameters */
	bp = call->request;
	bp = FUNC13(bp, YFSSTOREDATA64);
	bp = FUNC13(bp, 0); /* RPC flags */
	bp = FUNC11(bp, &vnode->fid);
	bp = FUNC12(bp, &vnode->vfs_inode.i_mtime);
	bp = FUNC14(bp, pos);
	bp = FUNC14(bp, size);
	bp = FUNC14(bp, i_size);
	FUNC15(call, bp);

	FUNC5(call, fc->cbi);
	FUNC10(call, &vnode->fid);
	FUNC4(call, fc);
	FUNC3(&fc->ac, call, GFP_NOFS);
	return FUNC7(call, &fc->ac);
}