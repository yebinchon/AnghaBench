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
typedef  int u64 ;
struct request_queue {int /*<<< orphan*/  disk_name; int /*<<< orphan*/  flags; struct request_queue* queue; int /*<<< orphan*/ * fops; scalar_t__ first_minor; struct nd_namespace_blk* queuedata; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct nd_namespace_blk {TYPE_1__ common; int /*<<< orphan*/  size; } ;
struct gendisk {int /*<<< orphan*/  disk_name; int /*<<< orphan*/  flags; struct gendisk* queue; int /*<<< orphan*/ * fops; scalar_t__ first_minor; struct nd_namespace_blk* queuedata; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct request_queue*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ ,struct request_queue*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd_blk_fops ; 
 int /*<<< orphan*/  nd_blk_make_request ; 
 int /*<<< orphan*/  nd_blk_release_disk ; 
 int /*<<< orphan*/  nd_blk_release_queue ; 
 int FUNC9 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct nd_namespace_blk*) ; 
 scalar_t__ FUNC11 (struct nd_namespace_blk*) ; 
 int FUNC12 (struct nd_namespace_blk*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC15 (struct request_queue*,int) ; 

__attribute__((used)) static int FUNC16(struct nd_namespace_blk *nsblk)
{
	struct device *dev = &nsblk->common.dev;
	resource_size_t available_disk_size;
	struct request_queue *q;
	struct gendisk *disk;
	u64 internal_nlba;

	internal_nlba = FUNC8(nsblk->size, FUNC10(nsblk));
	available_disk_size = internal_nlba * FUNC12(nsblk);

	q = FUNC1(GFP_KERNEL);
	if (!q)
		return -ENOMEM;
	if (FUNC7(dev, nd_blk_release_queue, q))
		return -ENOMEM;

	FUNC4(q, nd_blk_make_request);
	FUNC5(q, UINT_MAX);
	FUNC3(q, FUNC12(nsblk));
	FUNC2(QUEUE_FLAG_NONROT, q);
	q->queuedata = nsblk;

	disk = FUNC0(0);
	if (!disk)
		return -ENOMEM;

	disk->first_minor	= 0;
	disk->fops		= &nd_blk_fops;
	disk->queue		= q;
	disk->flags		= GENHD_FL_EXT_DEVT;
	FUNC13(&nsblk->common, disk->disk_name);

	if (FUNC7(dev, nd_blk_release_disk, disk))
		return -ENOMEM;

	if (FUNC11(nsblk)) {
		int rc = FUNC9(disk, FUNC11(nsblk));

		if (rc)
			return rc;
	}

	FUNC15(disk, available_disk_size >> SECTOR_SHIFT);
	FUNC6(dev, disk, NULL);
	FUNC14(disk);
	return 0;
}