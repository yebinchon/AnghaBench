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
struct data_queue {int /*<<< orphan*/  index_lock; scalar_t__* index; scalar_t__ length; scalar_t__ count; } ;

/* Variables and functions */
 unsigned int Q_INDEX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct data_queue *queue)
{
	unsigned long irqflags;
	unsigned int i;

	FUNC0(&queue->index_lock, irqflags);

	queue->count = 0;
	queue->length = 0;

	for (i = 0; i < Q_INDEX_MAX; i++)
		queue->index[i] = 0;

	FUNC1(&queue->index_lock, irqflags);
}