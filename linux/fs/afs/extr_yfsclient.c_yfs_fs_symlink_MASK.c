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
struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSStoreStatus {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_xdr_RPCFlags {int dummy; } ;
struct afs_vnode {int /*<<< orphan*/  fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_fid {int dummy; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; struct afs_fid* out_fid; struct afs_status_cb* out_dir_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  S_IRWXUGO ; 
 int /*<<< orphan*/  YFSSYMLINK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_call*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (size_t) ; 
 int /*<<< orphan*/  yfs_RXYFSSymlink ; 
 int /*<<< orphan*/  FUNC14 (struct afs_call*,int /*<<< orphan*/ *) ; 

int FUNC15(struct afs_fs_cursor *fc,
		   const char *name,
		   const char *contents,
		   struct afs_status_cb *dvnode_scb,
		   struct afs_fid *newfid,
		   struct afs_status_cb *vnode_scb)
{
	struct afs_vnode *dvnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(dvnode);
	size_t namesz, contents_sz;
	__be32 *bp;

	FUNC0("");

	namesz = FUNC7(name);
	contents_sz = FUNC7(contents);
	call = FUNC1(net, &yfs_RXYFSSymlink,
				   sizeof(__be32) +
				   sizeof(struct yfs_xdr_RPCFlags) +
				   sizeof(struct yfs_xdr_YFSFid) +
				   FUNC13(namesz) +
				   FUNC13(contents_sz) +
				   sizeof(struct yfs_xdr_YFSStoreStatus),
				   sizeof(struct yfs_xdr_YFSFid) +
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSVolSync));
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_dir_scb = dvnode_scb;
	call->out_fid = newfid;
	call->out_scb = vnode_scb;

	/* marshall the parameters */
	bp = call->request;
	bp = FUNC12(bp, YFSSYMLINK);
	bp = FUNC12(bp, 0); /* RPC flags */
	bp = FUNC9(bp, &dvnode->fid);
	bp = FUNC11(bp, name, namesz);
	bp = FUNC11(bp, contents, contents_sz);
	bp = FUNC10(bp, S_IRWXUGO);
	FUNC14(call, bp);

	FUNC4(call, fc->cbi);
	FUNC8(call, &dvnode->fid, name);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}