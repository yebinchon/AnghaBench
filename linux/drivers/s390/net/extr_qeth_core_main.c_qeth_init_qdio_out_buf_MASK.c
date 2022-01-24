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
struct qeth_qdio_out_q {struct qeth_qdio_out_buffer** bufs; int /*<<< orphan*/ * qdio_bufs; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  state; struct qeth_qdio_out_buffer* next_pending; struct qeth_qdio_out_q* q; TYPE_1__ skb_list; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qeth_qdio_out_buffer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qdio_out_skb_queue_key ; 
 int /*<<< orphan*/  qeth_qdio_outbuf_cache ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct qeth_qdio_out_q *q, int bidx)
{
	struct qeth_qdio_out_buffer *newbuf;

	newbuf = FUNC1(qeth_qdio_outbuf_cache, GFP_ATOMIC);
	if (!newbuf)
		return -ENOMEM;

	newbuf->buffer = q->qdio_bufs[bidx];
	FUNC3(&newbuf->skb_list);
	FUNC2(&newbuf->skb_list.lock, &qdio_out_skb_queue_key);
	newbuf->q = q;
	newbuf->next_pending = q->bufs[bidx];
	FUNC0(&newbuf->state, QETH_QDIO_BUF_EMPTY);
	q->bufs[bidx] = newbuf;
	return 0;
}