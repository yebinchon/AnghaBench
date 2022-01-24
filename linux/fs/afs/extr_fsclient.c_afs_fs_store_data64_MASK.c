#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int vid; int vnode; int unique; } ;
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_5__ {TYPE_1__ i_mtime; } ;
struct afs_vnode {TYPE_3__ fid; TYPE_2__ vfs_inode; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {unsigned int first_offset; unsigned int last_to; int send_pages; int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; void* last; void* first; struct address_space* mapping; int /*<<< orphan*/  key; } ;
struct address_space {int dummy; } ;
typedef  void* pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int AFS_SET_MTIME ; 
 int ENOMEM ; 
 int FSSTOREDATA64 ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData64 ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 struct afs_net* FUNC4 (struct afs_vnode*) ; 
 int FUNC5 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_call*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(struct afs_fs_cursor *fc,
			       struct address_space *mapping,
			       pgoff_t first, pgoff_t last,
			       unsigned offset, unsigned to,
			       loff_t size, loff_t pos, loff_t i_size,
			       struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC4(vnode);
	__be32 *bp;

	FUNC0(",%x,{%llx:%llu},,",
	       FUNC7(fc->key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC1(net, &afs_RXFSStoreData64,
				   (4 + 6 + 3 * 2) * 4,
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
	*bp++ = FUNC6(FSSTOREDATA64);
	*bp++ = FUNC6(vnode->fid.vid);
	*bp++ = FUNC6(vnode->fid.vnode);
	*bp++ = FUNC6(vnode->fid.unique);

	*bp++ = FUNC6(AFS_SET_MTIME); /* mask */
	*bp++ = FUNC6(vnode->vfs_inode.i_mtime.tv_sec); /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = 0; /* unix mode */
	*bp++ = 0; /* segment size */

	*bp++ = FUNC6(pos >> 32);
	*bp++ = FUNC6((u32) pos);
	*bp++ = FUNC6(size >> 32);
	*bp++ = FUNC6((u32) size);
	*bp++ = FUNC6(i_size >> 32);
	*bp++ = FUNC6((u32) i_size);

	FUNC8(call, &vnode->fid);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC5(call, &fc->ac);
}