#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int vid; int vnode; int unique; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_9__ {TYPE_2__ i_mtime; } ;
struct afs_vnode {TYPE_3__ fid; TYPE_4__ vfs_inode; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; TYPE_5__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {unsigned int first_offset; unsigned int last_to; int send_pages; int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; scalar_t__ last; scalar_t__ first; struct address_space* mapping; int /*<<< orphan*/  key; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_10__ {TYPE_1__* server; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 int AFS_SET_MTIME ; 
 int ENOMEM ; 
 int FSSTOREDATA ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (struct afs_fs_cursor*,struct address_space*,scalar_t__,scalar_t__,unsigned int,unsigned int,int,int,int,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_call*,TYPE_5__*) ; 
 struct afs_net* FUNC7 (struct afs_vnode*) ; 
 int FUNC8 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct afs_call*,TYPE_3__*) ; 
 int FUNC14 (struct afs_fs_cursor*,struct address_space*,scalar_t__,scalar_t__,unsigned int,unsigned int,struct afs_status_cb*) ; 

int FUNC15(struct afs_fs_cursor *fc, struct address_space *mapping,
		      pgoff_t first, pgoff_t last,
		      unsigned offset, unsigned to,
		      struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC7(vnode);
	loff_t size, pos, i_size;
	__be32 *bp;

	if (FUNC12(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC14(fc, mapping, first, last, offset, to, scb);

	FUNC1(",%x,{%llx:%llu},,",
	       FUNC11(fc->key), vnode->fid.vid, vnode->fid.vnode);

	size = (loff_t)to - (loff_t)offset;
	if (first != last)
		size += (loff_t)(last - first) << PAGE_SHIFT;
	pos = (loff_t)first << PAGE_SHIFT;
	pos += offset;

	i_size = FUNC10(&vnode->vfs_inode);
	if (pos + size > i_size)
		i_size = size + pos;

	FUNC0("size %llx, at %llx, i_size %llx",
	       (unsigned long long) size, (unsigned long long) pos,
	       (unsigned long long) i_size);

	if (pos >> 32 || i_size >> 32 || size >> 32 || (pos + size) >> 32)
		return FUNC3(fc, mapping, first, last, offset, to,
					   size, pos, i_size, scb);

	call = FUNC2(net, &afs_RXFSStoreData,
				   (4 + 6 + 3) * 4,
				   (21 + 6) * 4);
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
	*bp++ = FUNC9(FSSTOREDATA);
	*bp++ = FUNC9(vnode->fid.vid);
	*bp++ = FUNC9(vnode->fid.vnode);
	*bp++ = FUNC9(vnode->fid.unique);

	*bp++ = FUNC9(AFS_SET_MTIME); /* mask */
	*bp++ = FUNC9(vnode->vfs_inode.i_mtime.tv_sec); /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = 0; /* unix mode */
	*bp++ = 0; /* segment size */

	*bp++ = FUNC9(pos);
	*bp++ = FUNC9(size);
	*bp++ = FUNC9(i_size);

	FUNC6(call, fc->cbi);
	FUNC13(call, &vnode->fid);
	FUNC5(call, fc);
	FUNC4(&fc->ac, call, GFP_NOFS);
	return FUNC8(call, &fc->ac);
}