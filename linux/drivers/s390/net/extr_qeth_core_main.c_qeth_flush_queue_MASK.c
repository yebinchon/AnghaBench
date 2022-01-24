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
struct qeth_qdio_out_q {int /*<<< orphan*/ * prev_hdr; scalar_t__ bulk_start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_qdio_out_q*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct qeth_qdio_out_q *queue)
{
	FUNC1(queue, queue->bulk_start, 1);

	queue->bulk_start = FUNC0(queue->bulk_start + 1);
	queue->prev_hdr = NULL;
}