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
typedef  size_t u32 ;
struct knav_queue_inst {size_t* descs; int /*<<< orphan*/  desc_head; int /*<<< orphan*/  desc_count; } ;
struct knav_queue {TYPE_2__* stats; TYPE_1__* reg_pop; struct knav_queue_inst* inst; } ;
typedef  size_t dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  pops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ptr_size_thresh; } ;

/* Variables and functions */
 size_t ACC_DESCS_MASK ; 
 size_t DESC_PTR_MASK ; 
 size_t DESC_SIZE_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

dma_addr_t FUNC6(void *qhandle, unsigned *size)
{
	struct knav_queue *qh = qhandle;
	struct knav_queue_inst *inst = qh->inst;
	dma_addr_t dma;
	u32 val, idx;

	/* are we accumulated? */
	if (inst->descs) {
		if (FUNC5(FUNC0(&inst->desc_count) < 0)) {
			FUNC1(&inst->desc_count);
			return 0;
		}
		idx  = FUNC2(&inst->desc_head);
		idx &= ACC_DESCS_MASK;
		val = inst->descs[idx];
	} else {
		val = FUNC3(&qh->reg_pop[0].ptr_size_thresh);
		if (FUNC5(!val))
			return 0;
	}

	dma = val & DESC_PTR_MASK;
	if (size)
		*size = ((val & DESC_SIZE_MASK) + 1) * 16;

	FUNC4(qh->stats->pops);
	return dma;
}