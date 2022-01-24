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
struct sk_buff {scalar_t__ ip_summed; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct qeth_qdio_out_buffer {scalar_t__ next_element_to_fill; int /*<<< orphan*/  skb_list; int /*<<< orphan*/  state; struct qeth_qdio_out_q* q; } ;
struct TYPE_2__ {int gso_segs; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ QETH_QDIO_BUF_IN_CQ ; 
 scalar_t__ QETH_QDIO_BUF_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_NOTIFY_GENERALERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buf_elements ; 
 int /*<<< orphan*/  bufs ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  skbs_csum ; 
 int /*<<< orphan*/  skbs_sg ; 
 int /*<<< orphan*/  skbs_tso ; 
 int /*<<< orphan*/  tso_bytes ; 
 int /*<<< orphan*/  tx_bytes ; 
 int /*<<< orphan*/  tx_errors ; 
 int /*<<< orphan*/  tx_packets ; 

__attribute__((used)) static void FUNC11(struct qeth_qdio_out_buffer *buf, bool error,
				 int budget)
{
	struct qeth_qdio_out_q *queue = buf->q;
	struct sk_buff *skb;

	/* release may never happen from within CQ tasklet scope */
	FUNC2(FUNC4(&buf->state) == QETH_QDIO_BUF_IN_CQ);

	if (FUNC4(&buf->state) == QETH_QDIO_BUF_PENDING)
		FUNC7(queue, buf, TX_NOTIFY_GENERALERROR);

	/* Empty buffer? */
	if (buf->next_element_to_fill == 0)
		return;

	FUNC1(queue, bufs);
	FUNC0(queue, buf_elements, buf->next_element_to_fill);
	while ((skb = FUNC3(&buf->skb_list)) != NULL) {
		unsigned int bytes = FUNC6(skb);
		bool is_tso = FUNC8(skb);
		unsigned int packets;

		packets = is_tso ? FUNC10(skb)->gso_segs : 1;
		if (error) {
			FUNC0(queue, tx_errors, packets);
		} else {
			FUNC0(queue, tx_packets, packets);
			FUNC0(queue, tx_bytes, bytes);
			if (skb->ip_summed == CHECKSUM_PARTIAL)
				FUNC0(queue, skbs_csum, packets);
			if (FUNC9(skb))
				FUNC1(queue, skbs_sg);
			if (is_tso) {
				FUNC1(queue, skbs_tso);
				FUNC0(queue, tso_bytes, bytes);
			}
		}

		FUNC5(skb, budget);
	}
}