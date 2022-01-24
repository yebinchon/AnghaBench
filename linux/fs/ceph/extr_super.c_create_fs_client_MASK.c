#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct ceph_options {int dummy; } ;
struct ceph_mount_options {int wsize; int /*<<< orphan*/  mds_namespace; } ;
struct ceph_fs_client {int filp_gen; TYPE_1__* client; void* inode_wq; void* cap_wq; int /*<<< orphan*/  wb_pagevec_pool; struct ceph_mount_options* mount_options; int /*<<< orphan*/  writeback_count; int /*<<< orphan*/  mount_state; int /*<<< orphan*/ * sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  monc; int /*<<< orphan*/  extra_mon_dispatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ON_FULL ; 
 int /*<<< orphan*/  CEPH_MOUNT_MOUNTING ; 
 int /*<<< orphan*/  CEPH_SUB_FSMAP ; 
 int /*<<< orphan*/  CEPH_SUB_MDSMAP ; 
 int ENOMEM ; 
 struct ceph_fs_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  WQ_UNBOUND ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct ceph_options*,struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_options*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mount_options*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  extra_mon_dispatch ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_fs_client*) ; 
 struct ceph_fs_client* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,size_t) ; 

__attribute__((used)) static struct ceph_fs_client *FUNC15(struct ceph_mount_options *fsopt,
					struct ceph_options *opt)
{
	struct ceph_fs_client *fsc;
	int page_count;
	size_t size;
	int err;

	fsc = FUNC13(sizeof(*fsc), GFP_KERNEL);
	if (!fsc) {
		err = -ENOMEM;
		goto fail;
	}

	fsc->client = FUNC5(opt, fsc);
	if (FUNC1(fsc->client)) {
		err = FUNC2(fsc->client);
		goto fail;
	}
	opt = NULL; /* fsc->client now owns this */

	fsc->client->extra_mon_dispatch = extra_mon_dispatch;
	FUNC9(fsc->client, ABORT_ON_FULL);

	if (!fsopt->mds_namespace) {
		FUNC8(&fsc->client->monc, CEPH_SUB_MDSMAP,
				   0, true);
	} else {
		FUNC8(&fsc->client->monc, CEPH_SUB_FSMAP,
				   0, false);
	}

	fsc->mount_options = fsopt;

	fsc->sb = NULL;
	fsc->mount_state = CEPH_MOUNT_MOUNTING;
	fsc->filp_gen = 1;

	FUNC4(&fsc->writeback_count, 0);

	err = -ENOMEM;
	/*
	 * The number of concurrent works can be high but they don't need
	 * to be processed in parallel, limit concurrency.
	 */
	fsc->inode_wq = FUNC3("ceph-inode", WQ_UNBOUND, 0);
	if (!fsc->inode_wq)
		goto fail_client;
	fsc->cap_wq = FUNC3("ceph-cap", 0, 1);
	if (!fsc->cap_wq)
		goto fail_inode_wq;

	/* set up mempools */
	err = -ENOMEM;
	page_count = fsc->mount_options->wsize >> PAGE_SHIFT;
	size = sizeof (struct page *) * (page_count ? page_count : 1);
	fsc->wb_pagevec_pool = FUNC14(10, size);
	if (!fsc->wb_pagevec_pool)
		goto fail_cap_wq;

	return fsc;

fail_cap_wq:
	FUNC11(fsc->cap_wq);
fail_inode_wq:
	FUNC11(fsc->inode_wq);
fail_client:
	FUNC6(fsc->client);
fail:
	FUNC12(fsc);
	if (opt)
		FUNC7(opt);
	FUNC10(fsopt);
	return FUNC0(err);
}