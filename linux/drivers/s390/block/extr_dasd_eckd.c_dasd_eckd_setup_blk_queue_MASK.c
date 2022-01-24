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
struct TYPE_2__ {int max_dev_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
struct dasd_device {int features; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; struct dasd_device* base; struct request_queue* request_queue; } ;

/* Variables and functions */
 int DASD_ECKD_MAX_BLOCKS ; 
 int DASD_ECKD_MAX_BLOCKS_RAW ; 
 int DASD_FEATURE_USERAW ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct dasd_block *block)
{
	unsigned int logical_block_size = block->bp_block;
	struct request_queue *q = block->request_queue;
	struct dasd_device *device = block->base;
	int max;

	if (device->features & DASD_FEATURE_USERAW) {
		/*
		 * the max_blocks value for raw_track access is 256
		 * it is higher than the native ECKD value because we
		 * only need one ccw per track
		 * so the max_hw_sectors are
		 * 2048 x 512B = 1024kB = 16 tracks
		 */
		max = DASD_ECKD_MAX_BLOCKS_RAW << block->s2b_shift;
	} else {
		max = DASD_ECKD_MAX_BLOCKS << block->s2b_shift;
	}
	FUNC0(QUEUE_FLAG_NONROT, q);
	q->limits.max_dev_sectors = max;
	FUNC1(q, logical_block_size);
	FUNC2(q, max);
	FUNC4(q, USHRT_MAX);
	/* With page sized segments each segment can be translated into one idaw/tidaw */
	FUNC3(q, PAGE_SIZE);
	FUNC5(q, PAGE_SIZE - 1);
}