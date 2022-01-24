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
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_xdr_RPCFlags {int dummy; } ;
struct afs_vnode {int /*<<< orphan*/  fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; struct afs_status_cb* out_dir_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  YFSRENAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_call*,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (size_t) ; 
 int /*<<< orphan*/  yfs_RXYFSRename ; 
 int /*<<< orphan*/  FUNC13 (struct afs_call*,int /*<<< orphan*/ *) ; 

int FUNC14(struct afs_fs_cursor *fc,
		  const char *orig_name,
		  struct afs_vnode *new_dvnode,
		  const char *new_name,
		  struct afs_status_cb *orig_dvnode_scb,
		  struct afs_status_cb *new_dvnode_scb)
{
	struct afs_vnode *orig_dvnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(orig_dvnode);
	size_t o_namesz, n_namesz;
	__be32 *bp;

	FUNC0("");

	o_namesz = FUNC7(orig_name);
	n_namesz = FUNC7(new_name);
	call = FUNC1(net, &yfs_RXYFSRename,
				   sizeof(__be32) +
				   sizeof(struct yfs_xdr_RPCFlags) +
				   sizeof(struct yfs_xdr_YFSFid) +
				   FUNC12(o_namesz) +
				   sizeof(struct yfs_xdr_YFSFid) +
				   FUNC12(n_namesz),
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSVolSync));
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_dir_scb = orig_dvnode_scb;
	call->out_scb = new_dvnode_scb;

	/* marshall the parameters */
	bp = call->request;
	bp = FUNC11(bp, YFSRENAME);
	bp = FUNC11(bp, 0); /* RPC flags */
	bp = FUNC9(bp, &orig_dvnode->fid);
	bp = FUNC10(bp, orig_name, o_namesz);
	bp = FUNC9(bp, &new_dvnode->fid);
	bp = FUNC10(bp, new_name, n_namesz);
	FUNC13(call, bp);

	FUNC4(call, fc->cbi);
	FUNC8(call, &orig_dvnode->fid, orig_name, new_name);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}