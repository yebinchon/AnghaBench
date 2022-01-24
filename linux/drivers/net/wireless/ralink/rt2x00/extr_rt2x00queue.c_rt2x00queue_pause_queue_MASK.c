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
struct data_queue {int /*<<< orphan*/  flags; TYPE_1__* rt2x00dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  QUEUE_PAUSED ; 
 int /*<<< orphan*/  QUEUE_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct data_queue*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct data_queue *queue)
{
	if (!FUNC2(DEVICE_STATE_PRESENT, &queue->rt2x00dev->flags) ||
	    !FUNC2(QUEUE_STARTED, &queue->flags) ||
	    FUNC1(QUEUE_PAUSED, &queue->flags))
		return;

	FUNC0(queue);
}