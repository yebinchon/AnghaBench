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
struct TYPE_5__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; TYPE_3__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; struct afs_status_cb* out_dir_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 int ENOMEM ; 
 size_t FSRENAME ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSRename ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,TYPE_3__*) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct afs_call*,TYPE_2__*,char const*,char const*) ; 
 int FUNC13 (struct afs_fs_cursor*,char const*,struct afs_vnode*,char const*,struct afs_status_cb*,struct afs_status_cb*) ; 

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
	size_t reqsz, o_namesz, o_padsz, n_namesz, n_padsz;
	__be32 *bp;

	if (FUNC11(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC13(fc, orig_name,
				     new_dvnode, new_name,
				     orig_dvnode_scb,
				     new_dvnode_scb);

	FUNC0("");

	o_namesz = FUNC10(orig_name);
	o_padsz = (4 - (o_namesz & 3)) & 3;

	n_namesz = FUNC10(new_name);
	n_padsz = (4 - (n_namesz & 3)) & 3;

	reqsz = (4 * 4) +
		4 + o_namesz + o_padsz +
		(3 * 4) +
		4 + n_namesz + n_padsz;

	call = FUNC1(net, &afs_RXFSRename, reqsz, (21 + 21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_dir_scb = orig_dvnode_scb;
	call->out_scb = new_dvnode_scb;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC7(FSRENAME);
	*bp++ = FUNC7(orig_dvnode->fid.vid);
	*bp++ = FUNC7(orig_dvnode->fid.vnode);
	*bp++ = FUNC7(orig_dvnode->fid.unique);
	*bp++ = FUNC7(o_namesz);
	FUNC8(bp, orig_name, o_namesz);
	bp = (void *) bp + o_namesz;
	if (o_padsz > 0) {
		FUNC9(bp, 0, o_padsz);
		bp = (void *) bp + o_padsz;
	}

	*bp++ = FUNC7(new_dvnode->fid.vid);
	*bp++ = FUNC7(new_dvnode->fid.vnode);
	*bp++ = FUNC7(new_dvnode->fid.unique);
	*bp++ = FUNC7(n_namesz);
	FUNC8(bp, new_name, n_namesz);
	bp = (void *) bp + n_namesz;
	if (n_padsz > 0) {
		FUNC9(bp, 0, n_padsz);
		bp = (void *) bp + n_padsz;
	}

	FUNC4(call, fc->cbi);
	FUNC12(call, &orig_dvnode->fid, orig_name, new_name);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}