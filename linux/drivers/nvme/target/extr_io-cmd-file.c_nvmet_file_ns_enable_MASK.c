#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nvmet_ns {scalar_t__ blksize_shift; scalar_t__ size; int /*<<< orphan*/  bvec_pool; int /*<<< orphan*/  bvec_cache; TYPE_1__* file; int /*<<< orphan*/  device_path; int /*<<< orphan*/  buffered_io; } ;
struct kstat {scalar_t__ size; } ;
struct bio_vec {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_blkbits; } ;
struct TYPE_6__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_STATX_FORCE_SYNC ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int NVMET_MAX_MPOOL_BVEC ; 
 int /*<<< orphan*/  NVMET_MIN_MPOOL_OBJ ; 
 int O_DIRECT ; 
 int O_LARGEFILE ; 
 int O_RDWR ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  STATX_SIZE ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mempool_alloc_slab ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mempool_free_slab ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvmet_ns*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  u8 ; 
 int FUNC9 (int /*<<< orphan*/ *,struct kstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct nvmet_ns *ns)
{
	int flags = O_RDWR | O_LARGEFILE;
	struct kstat stat;
	int ret;

	if (!ns->buffered_io)
		flags |= O_DIRECT;

	ns->file = FUNC3(ns->device_path, flags, 0);
	if (FUNC0(ns->file)) {
		FUNC8("failed to open file %s: (%ld)\n",
				ns->device_path, FUNC1(ns->file));
		return FUNC1(ns->file);
	}

	ret = FUNC9(&ns->file->f_path,
			&stat, STATX_SIZE, AT_STATX_FORCE_SYNC);
	if (ret)
		goto err;

	ns->size = stat.size;
	/*
	 * i_blkbits can be greater than the universally accepted upper bound,
	 * so make sure we export a sane namespace lba_shift.
	 */
	ns->blksize_shift = FUNC6(u8,
			FUNC2(ns->file)->i_blkbits, 12);

	ns->bvec_cache = FUNC4("nvmet-bvec",
			NVMET_MAX_MPOOL_BVEC * sizeof(struct bio_vec),
			0, SLAB_HWCACHE_ALIGN, NULL);
	if (!ns->bvec_cache) {
		ret = -ENOMEM;
		goto err;
	}

	ns->bvec_pool = FUNC5(NVMET_MIN_MPOOL_OBJ, mempool_alloc_slab,
			mempool_free_slab, ns->bvec_cache);

	if (!ns->bvec_pool) {
		ret = -ENOMEM;
		goto err;
	}

	return ret;
err:
	ns->size = 0;
	ns->blksize_shift = 0;
	FUNC7(ns);
	return ret;
}