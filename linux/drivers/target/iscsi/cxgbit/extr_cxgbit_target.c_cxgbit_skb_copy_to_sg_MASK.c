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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct skb_seq_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;
struct cxgbit_lro_pdu_cb {scalar_t__ dlen; scalar_t__ doffset; } ;

/* Variables and functions */
 struct cxgbit_lro_pdu_cb* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct scatterlist*,unsigned int,void*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct skb_seq_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__,scalar_t__,struct skb_seq_state*) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/  const**,struct skb_seq_state*) ; 

__attribute__((used)) static void
FUNC5(struct sk_buff *skb, struct scatterlist *sg,
		      unsigned int nents, u32 skip)
{
	struct skb_seq_state st;
	const u8 *buf;
	unsigned int consumed = 0, buf_len;
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC0(skb);

	FUNC3(skb, pdu_cb->doffset,
			     pdu_cb->doffset + pdu_cb->dlen,
			     &st);

	while (true) {
		buf_len = FUNC4(consumed, &buf, &st);
		if (!buf_len) {
			FUNC2(&st);
			break;
		}

		consumed += FUNC1(sg, nents, (void *)buf,
						 buf_len, skip + consumed);
	}
}