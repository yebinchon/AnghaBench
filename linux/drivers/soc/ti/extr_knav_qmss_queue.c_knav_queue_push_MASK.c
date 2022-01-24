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
typedef  unsigned int u32 ;
struct knav_queue {TYPE_2__* stats; TYPE_1__* reg_push; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  pushes; } ;
struct TYPE_3__ {int /*<<< orphan*/  ptr_size_thresh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 

int FUNC2(void *qhandle, dma_addr_t dma,
					unsigned size, unsigned flags)
{
	struct knav_queue *qh = qhandle;
	u32 val;

	val = (u32)dma | ((size / 16) - 1);
	FUNC1(val, &qh->reg_push[0].ptr_size_thresh);

	FUNC0(qh->stats->pushes);
	return 0;
}