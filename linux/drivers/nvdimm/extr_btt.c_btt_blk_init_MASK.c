#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct nd_namespace_common {int dummy; } ;
struct nd_btt {int size; int /*<<< orphan*/  dev; struct nd_namespace_common* ndns; } ;
struct btt {int sector_size; int nlba; TYPE_2__* btt_disk; struct nd_btt* nd_btt; TYPE_8__* btt_queue; } ;
struct TYPE_17__ {struct btt* queuedata; TYPE_1__* backing_dev_info; } ;
struct TYPE_16__ {TYPE_8__* queue; int /*<<< orphan*/  flags; struct btt* private_data; int /*<<< orphan*/ * fops; scalar_t__ first_minor; int /*<<< orphan*/  disk_name; } ;
struct TYPE_15__ {int /*<<< orphan*/  capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_SYNCHRONOUS_IO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btt_fops ; 
 int /*<<< orphan*/  btt_make_request ; 
 scalar_t__ FUNC7 (struct btt*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct nd_namespace_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC15(struct btt *btt)
{
	struct nd_btt *nd_btt = btt->nd_btt;
	struct nd_namespace_common *ndns = nd_btt->ndns;

	/* create a new disk and request queue for btt */
	btt->btt_queue = FUNC1(GFP_KERNEL);
	if (!btt->btt_queue)
		return -ENOMEM;

	btt->btt_disk = FUNC0(0);
	if (!btt->btt_disk) {
		FUNC2(btt->btt_queue);
		return -ENOMEM;
	}

	FUNC11(ndns, btt->btt_disk->disk_name);
	btt->btt_disk->first_minor = 0;
	btt->btt_disk->fops = &btt_fops;
	btt->btt_disk->private_data = btt;
	btt->btt_disk->queue = btt->btt_queue;
	btt->btt_disk->flags = GENHD_FL_EXT_DEVT;
	btt->btt_disk->queue->backing_dev_info->capabilities |=
			BDI_CAP_SYNCHRONOUS_IO;

	FUNC5(btt->btt_queue, btt_make_request);
	FUNC4(btt->btt_queue, btt->sector_size);
	FUNC6(btt->btt_queue, UINT_MAX);
	FUNC3(QUEUE_FLAG_NONROT, btt->btt_queue);
	btt->btt_queue->queuedata = btt;

	if (FUNC7(btt)) {
		int rc = FUNC10(btt->btt_disk, FUNC7(btt));

		if (rc) {
			FUNC8(btt->btt_disk);
			FUNC12(btt->btt_disk);
			FUNC2(btt->btt_queue);
			return rc;
		}
	}
	FUNC14(btt->btt_disk, btt->nlba * btt->sector_size >> 9);
	FUNC9(&btt->nd_btt->dev, btt->btt_disk, NULL);
	btt->nd_btt->size = btt->nlba * (u64)btt->sector_size;
	FUNC13(btt->btt_disk);

	return 0;
}