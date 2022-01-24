#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct fib {int /*<<< orphan*/  hw_fib_va; struct aac_dev* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * producer; } ;
struct aac_queue {TYPE_1__ headers; int /*<<< orphan*/  numpending; } ;
struct aac_dev {TYPE_2__* queues; } ;
struct TYPE_6__ {unsigned long irq_mod; } ;
struct TYPE_5__ {struct aac_queue* queue; } ;

/* Variables and functions */
 size_t AdapNormCmdQueue ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,size_t) ; 
 TYPE_3__ aac_config ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,scalar_t__*,size_t,int /*<<< orphan*/ ,int,struct fib*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int FUNC4(struct fib * fib)
{
	struct aac_dev *dev = fib->dev;
	struct aac_queue *q = &dev->queues->queue[AdapNormCmdQueue];
	u32 Index;
	unsigned long nointr = 0;

	FUNC1( dev, &Index, AdapNormCmdQueue, fib->hw_fib_va, 1, fib, &nointr);

	FUNC2(&q->numpending);
	*(q->headers.producer) = FUNC3(Index + 1);
	if (!(nointr & aac_config.irq_mod))
		FUNC0(dev, AdapNormCmdQueue);

	return 0;
}