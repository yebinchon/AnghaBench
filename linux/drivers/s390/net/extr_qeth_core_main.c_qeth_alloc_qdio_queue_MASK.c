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
struct qeth_qdio_q {int /*<<< orphan*/ * qdio_bufs; TYPE_1__* bufs; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct qeth_qdio_q**,int) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_qdio_q*) ; 
 struct qeth_qdio_q* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct qeth_qdio_q *FUNC4(void)
{
	struct qeth_qdio_q *q = FUNC2(sizeof(*q), GFP_KERNEL);
	int i;

	if (!q)
		return NULL;

	if (FUNC3(q->qdio_bufs, QDIO_MAX_BUFFERS_PER_Q)) {
		FUNC1(q);
		return NULL;
	}

	for (i = 0; i < QDIO_MAX_BUFFERS_PER_Q; ++i)
		q->bufs[i].buffer = q->qdio_bufs[i];

	FUNC0(SETUP, 2, &q, sizeof(void *));
	return q;
}