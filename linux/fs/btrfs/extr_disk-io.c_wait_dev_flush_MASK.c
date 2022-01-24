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
struct btrfs_device {int /*<<< orphan*/  flush_wait; int /*<<< orphan*/  dev_state; struct bio* flush_bio; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BTRFS_DEV_STATE_FLUSH_SENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC3(struct btrfs_device *device)
{
	struct bio *bio = device->flush_bio;

	if (!FUNC1(BTRFS_DEV_STATE_FLUSH_SENT, &device->dev_state))
		return BLK_STS_OK;

	FUNC0(BTRFS_DEV_STATE_FLUSH_SENT, &device->dev_state);
	FUNC2(&device->flush_wait);

	return bio->bi_status;
}