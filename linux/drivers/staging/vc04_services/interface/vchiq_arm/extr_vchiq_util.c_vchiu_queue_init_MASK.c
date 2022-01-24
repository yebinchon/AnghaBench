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
struct vchiu_queue {int size; int initialized; int /*<<< orphan*/  storage; int /*<<< orphan*/  push; int /*<<< orphan*/  pop; scalar_t__ write; scalar_t__ read; } ;
struct vchiq_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vchiu_queue*) ; 

int FUNC5(struct vchiu_queue *queue, int size)
{
	FUNC0(!FUNC2(size));

	queue->size = size;
	queue->read = 0;
	queue->write = 0;
	queue->initialized = 1;

	FUNC1(&queue->pop);
	FUNC1(&queue->push);

	queue->storage = FUNC3(size, sizeof(struct vchiq_header *),
				 GFP_KERNEL);
	if (!queue->storage) {
		FUNC4(queue);
		return 0;
	}
	return 1;
}