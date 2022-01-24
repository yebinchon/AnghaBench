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
struct inode {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/  i_inline_version; } ;
struct ceph_aio_request {int error; int total_len; int /*<<< orphan*/  prealloc_cf; TYPE_1__* iocb; scalar_t__ write; int /*<<< orphan*/  pending_reqs; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ ki_pos; int /*<<< orphan*/  (* ki_complete ) (TYPE_1__*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_FILE_RD ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_WR ; 
 int /*<<< orphan*/  CEPH_INLINE_NONE ; 
 int /*<<< orphan*/  CHECK_CAPS_AUTHONLY ; 
 int FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ceph_inode_info* FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_inode_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct inode*,int) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_aio_request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct inode *inode,
			      struct ceph_aio_request *aio_req)
{
	struct ceph_inode_info *ci = FUNC5(inode);
	int ret;

	if (!FUNC2(&aio_req->pending_reqs))
		return;

	ret = aio_req->error;
	if (!ret)
		ret = aio_req->total_len;

	FUNC8("ceph_aio_complete %p rc %d\n", inode, ret);

	if (ret >= 0 && aio_req->write) {
		int dirty;

		loff_t endoff = aio_req->iocb->ki_pos + aio_req->total_len;
		if (endoff > FUNC9(inode)) {
			if (FUNC6(inode, endoff))
				FUNC3(ci, CHECK_CAPS_AUTHONLY, NULL);
		}

		FUNC11(&ci->i_ceph_lock);
		ci->i_inline_version = CEPH_INLINE_NONE;
		dirty = FUNC0(ci, CEPH_CAP_FILE_WR,
					       &aio_req->prealloc_cf);
		FUNC12(&ci->i_ceph_lock);
		if (dirty)
			FUNC1(inode, dirty);

	}

	FUNC7(ci, (aio_req->write ? CEPH_CAP_FILE_WR :
						CEPH_CAP_FILE_RD));

	aio_req->iocb->ki_complete(aio_req->iocb, ret, 0);

	FUNC4(aio_req->prealloc_cf);
	FUNC10(aio_req);
}