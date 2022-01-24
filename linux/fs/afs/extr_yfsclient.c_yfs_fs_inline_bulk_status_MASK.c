#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct afs_volsync {int dummy; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_3__ {int error; } ;
struct afs_fs_cursor {TYPE_1__ ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; } ;
struct afs_fid {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_call {unsigned int count2; int /*<<< orphan*/ * request; struct afs_volsync* out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int YFSINLINEBULKSTATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_call*,struct afs_fid*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,struct afs_fid*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  yfs_RXYFSInlineBulkStatus ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*,int /*<<< orphan*/ *) ; 

int FUNC11(struct afs_fs_cursor *fc,
			      struct afs_net *net,
			      struct afs_fid *fids,
			      struct afs_status_cb *statuses,
			      unsigned int nr_fids,
			      struct afs_volsync *volsync)
{
	struct afs_call *call;
	__be32 *bp;
	int i;

	FUNC0(",%x,{%llx:%llu},%u",
	       FUNC6(fc->key), fids[0].vid, fids[1].vnode, nr_fids);

	call = FUNC1(net, &yfs_RXYFSInlineBulkStatus,
				   sizeof(__be32) +
				   sizeof(__be32) +
				   sizeof(__be32) +
				   sizeof(struct yfs_xdr_YFSFid) * nr_fids,
				   sizeof(struct yfs_xdr_YFSFetchStatus));
	if (!call) {
		fc->ac.error = -ENOMEM;
		return -ENOMEM;
	}

	call->key = fc->key;
	call->out_scb = statuses;
	call->out_volsync = volsync;
	call->count2 = nr_fids;

	/* marshall the parameters */
	bp = call->request;
	bp = FUNC9(bp, YFSINLINEBULKSTATUS);
	bp = FUNC9(bp, 0); /* RPCFlags */
	bp = FUNC9(bp, nr_fids);
	for (i = 0; i < nr_fids; i++)
		bp = FUNC8(bp, &fids[i]);
	FUNC10(call, bp);

	FUNC4(call, fc->cbi);
	FUNC7(call, &fids[0]);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC5(call, &fc->ac);
}