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
struct TYPE_2__ {int max_dev_sectors; unsigned int discard_granularity; scalar_t__ discard_alignment; } ;
struct request_queue {TYPE_1__ limits; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; struct request_queue* request_queue; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,scalar_t__) ; 
 int DASD_FBA_MAX_BLOCKS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 unsigned int USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct dasd_block *block)
{
	unsigned int logical_block_size = block->bp_block;
	struct request_queue *q = block->request_queue;
	unsigned int max_bytes, max_discard_sectors;
	int max;

	max = DASD_FBA_MAX_BLOCKS << block->s2b_shift;
	FUNC1(QUEUE_FLAG_NONROT, q);
	q->limits.max_dev_sectors = max;
	FUNC2(q, logical_block_size);
	FUNC4(q, max);
	FUNC6(q, USHRT_MAX);
	/* With page sized segments each segment can be translated into one idaw/tidaw */
	FUNC5(q, PAGE_SIZE);
	FUNC8(q, PAGE_SIZE - 1);

	q->limits.discard_granularity = logical_block_size;
	q->limits.discard_alignment = PAGE_SIZE;

	/* Calculate max_discard_sectors and make it PAGE aligned */
	max_bytes = USHRT_MAX * logical_block_size;
	max_bytes = FUNC0(max_bytes, PAGE_SIZE);
	max_discard_sectors = max_bytes / logical_block_size;

	FUNC3(q, max_discard_sectors);
	FUNC7(q, max_discard_sectors);
	FUNC1(QUEUE_FLAG_DISCARD, q);
}