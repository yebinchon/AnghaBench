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
struct vchiu_queue {int write; int read; int size; int /*<<< orphan*/  pop; struct vchiq_header** storage; int /*<<< orphan*/  push; } ;
struct vchiq_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

struct vchiq_header *FUNC3(struct vchiu_queue *queue)
{
	struct vchiq_header *header;

	while (queue->write == queue->read) {
		if (FUNC2(&queue->push))
			FUNC1(current);
	}

	header = queue->storage[queue->read & (queue->size - 1)];
	queue->read++;

	FUNC0(&queue->pop);

	return header;
}