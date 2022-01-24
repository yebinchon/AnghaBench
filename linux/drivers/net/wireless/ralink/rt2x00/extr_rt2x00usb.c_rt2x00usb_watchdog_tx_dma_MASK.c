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
struct data_queue {int /*<<< orphan*/  qid; int /*<<< orphan*/  rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct data_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct data_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct data_queue*) ; 

__attribute__((used)) static void FUNC4(struct data_queue *queue)
{
	FUNC0(queue->rt2x00dev, "TX queue %d DMA timed out, invoke forced forced reset\n",
		    queue->qid);

	FUNC3(queue);
	FUNC1(queue, true);
	FUNC2(queue);
}