#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
struct yfs_xdr_YFSFid {TYPE_2__ vnode; int /*<<< orphan*/  volume; } ;
struct TYPE_3__ {void* unique; void* vnode_hi; void* vnode; void* vid; } ;
struct afs_callback_break {TYPE_1__ fid; } ;
struct afs_call {int unmarshall; int count; struct yfs_xdr_YFSFid* buffer; struct afs_callback_break* request; int /*<<< orphan*/  tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_SV_REPLYING ; 
 int /*<<< orphan*/  EBADMSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int YFSCBMAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_eproto_cb_fid_count ; 
 int FUNC3 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*) ; 
 int FUNC6 (struct afs_call*) ; 
 int FUNC7 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_io_error_cm_reply ; 
 int FUNC8 (struct afs_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int,int) ; 
 struct afs_callback_break* FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 struct yfs_xdr_YFSFid* FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct afs_call *call)
{
	struct afs_callback_break *cb;
	struct yfs_xdr_YFSFid *bp;
	size_t size;
	int ret, loop;

	FUNC1("{%u}", call->unmarshall);

	switch (call->unmarshall) {
	case 0:
		FUNC5(call);
		call->unmarshall++;

		/* extract the FID array and its count in two steps */
		/* Fall through */
	case 1:
		FUNC0("extract FID count");
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		call->count = FUNC12(call->tmp);
		FUNC0("FID count: %u", call->count);
		if (call->count > YFSCBMAX)
			return FUNC8(call, -EBADMSG,
						  afs_eproto_cb_fid_count);

		size = FUNC9(call->count, sizeof(struct yfs_xdr_YFSFid));
		call->buffer = FUNC11(size, GFP_KERNEL);
		if (!call->buffer)
			return -ENOMEM;
		FUNC4(call, size);
		call->unmarshall++;

		/* Fall through */
	case 2:
		FUNC0("extract FID array");
		ret = FUNC3(call, false);
		if (ret < 0)
			return ret;

		FUNC0("unmarshall FID array");
		call->request = FUNC10(call->count,
					sizeof(struct afs_callback_break),
					GFP_KERNEL);
		if (!call->request)
			return -ENOMEM;

		cb = call->request;
		bp = call->buffer;
		for (loop = call->count; loop > 0; loop--, cb++) {
			cb->fid.vid	= FUNC13(bp->volume);
			cb->fid.vnode	= FUNC13(bp->vnode.lo);
			cb->fid.vnode_hi = FUNC12(bp->vnode.hi);
			cb->fid.unique	= FUNC12(bp->vnode.unique);
			bp++;
		}

		FUNC5(call);
		call->unmarshall++;

	case 3:
		break;
	}

	if (!FUNC2(call, AFS_CALL_SV_REPLYING))
		return FUNC7(call, afs_io_error_cm_reply);

	/* We'll need the file server record as that tells us which set of
	 * vnodes to operate upon.
	 */
	return FUNC6(call);
}