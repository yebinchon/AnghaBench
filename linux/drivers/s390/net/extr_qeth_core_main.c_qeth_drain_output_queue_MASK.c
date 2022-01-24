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
struct qeth_qdio_out_q {int /*<<< orphan*/ ** bufs; } ;

/* Variables and functions */
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_qdio_out_q*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_qdio_out_q*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_qdio_outbuf_cache ; 

__attribute__((used)) static void FUNC3(struct qeth_qdio_out_q *q, bool free)
{
	int j;

	for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
		if (!q->bufs[j])
			continue;
		FUNC1(q, j, 1);
		FUNC2(q, q->bufs[j], true, 0);
		if (free) {
			FUNC0(qeth_qdio_outbuf_cache, q->bufs[j]);
			q->bufs[j] = NULL;
		}
	}
}