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
struct request_queue {int /*<<< orphan*/  queue_flags; } ;
struct btrfs_device {int /*<<< orphan*/  dev_state; int /*<<< orphan*/  flush_wait; int /*<<< orphan*/  bdev; struct bio* flush_bio; } ;
struct bio {int bi_opf; int /*<<< orphan*/ * bi_private; int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DEV_STATE_FLUSH_SENT ; 
 int /*<<< orphan*/  QUEUE_FLAG_WC ; 
 int REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_end_empty_barrier ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct btrfs_device *device)
{
	struct request_queue *q = FUNC0(device->bdev);
	struct bio *bio = device->flush_bio;

	if (!FUNC6(QUEUE_FLAG_WC, &q->queue_flags))
		return;

	FUNC1(bio);
	bio->bi_end_io = btrfs_end_empty_barrier;
	FUNC2(bio, device->bdev);
	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH;
	FUNC4(&device->flush_wait);
	bio->bi_private = &device->flush_wait;

	FUNC3(bio);
	FUNC5(BTRFS_DEV_STATE_FLUSH_SENT, &device->dev_state);
}