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
typedef  void* u64 ;
typedef  void* u32 ;
struct btrfsic_state {struct btrfs_fs_info* fs_info; } ;
struct btrfsic_block_data_ctx {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * mem_to_free; int /*<<< orphan*/ * pagev; int /*<<< orphan*/ * datav; void* len; void* start; int /*<<< orphan*/  dev_bytenr; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_device {TYPE_1__* bdev; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_state; } ;
struct btrfs_bio {TYPE_2__* stripes; } ;
struct TYPE_4__ {int /*<<< orphan*/  physical; struct btrfs_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DEV_STATE_MISSING ; 
 int /*<<< orphan*/  BTRFS_MAP_READ ; 
 int ENXIO ; 
 int FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ,void*,void**,struct btrfs_bio**,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_bio*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct btrfsic_state *state, u64 bytenr, u32 len,
			     struct btrfsic_block_data_ctx *block_ctx_out,
			     int mirror_num)
{
	struct btrfs_fs_info *fs_info = state->fs_info;
	int ret;
	u64 length;
	struct btrfs_bio *multi = NULL;
	struct btrfs_device *device;

	length = len;
	ret = FUNC0(fs_info, BTRFS_MAP_READ,
			      bytenr, &length, &multi, mirror_num);

	if (ret) {
		block_ctx_out->start = 0;
		block_ctx_out->dev_bytenr = 0;
		block_ctx_out->len = 0;
		block_ctx_out->dev = NULL;
		block_ctx_out->datav = NULL;
		block_ctx_out->pagev = NULL;
		block_ctx_out->mem_to_free = NULL;

		return ret;
	}

	device = multi->stripes[0].dev;
	if (FUNC4(BTRFS_DEV_STATE_MISSING, &device->dev_state) ||
	    !device->bdev || !device->name)
		block_ctx_out->dev = NULL;
	else
		block_ctx_out->dev = FUNC1(
							device->bdev->bd_dev);
	block_ctx_out->dev_bytenr = multi->stripes[0].physical;
	block_ctx_out->start = bytenr;
	block_ctx_out->len = len;
	block_ctx_out->datav = NULL;
	block_ctx_out->pagev = NULL;
	block_ctx_out->mem_to_free = NULL;

	FUNC2(multi);
	if (NULL == block_ctx_out->dev) {
		ret = -ENXIO;
		FUNC3("btrfsic: error, cannot lookup dev (#1)!\n");
	}

	return ret;
}