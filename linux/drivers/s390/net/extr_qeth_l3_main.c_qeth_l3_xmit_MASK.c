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
struct sk_buff {int dummy; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct qeth_hdr_tso {int dummy; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  qeth_l3_fill_header ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct qeth_card*,struct sk_buff*,struct qeth_qdio_out_q*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card, struct sk_buff *skb,
			struct qeth_qdio_out_q *queue, int ipv)
{
	unsigned int hw_hdr_len;
	int rc;

	/* re-use the L2 header area for the HW header: */
	hw_hdr_len = FUNC3(skb) ? sizeof(struct qeth_hdr_tso) :
				       sizeof(struct qeth_hdr);
	rc = FUNC2(skb, hw_hdr_len - ETH_HLEN);
	if (rc)
		return rc;
	FUNC4(skb, ETH_HLEN);

	FUNC0(skb);
	return FUNC1(card, skb, queue, ipv, qeth_l3_fill_header);
}