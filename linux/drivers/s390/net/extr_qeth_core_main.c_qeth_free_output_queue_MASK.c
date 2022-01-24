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
struct qeth_qdio_out_q {int /*<<< orphan*/  qdio_bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_qdio_out_q*,int) ; 

__attribute__((used)) static void FUNC3(struct qeth_qdio_out_q *q)
{
	if (!q)
		return;

	FUNC2(q, true);
	FUNC1(q->qdio_bufs, QDIO_MAX_BUFFERS_PER_Q);
	FUNC0(q);
}