#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int len; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_10__ {int id; int /*<<< orphan*/ * flags; } ;
struct TYPE_11__ {TYPE_4__ l2; } ;
struct qeth_hdr {TYPE_5__ hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* data_cb ) (struct sk_buff*) ;} ;
struct TYPE_9__ {size_t b_index; int /*<<< orphan*/  e_offset; int /*<<< orphan*/  b_element; } ;
struct TYPE_8__ {TYPE_1__* in_q; } ;
struct qeth_card {TYPE_6__ osn_info; int /*<<< orphan*/  napi; TYPE_3__ rx; TYPE_2__ qdio; } ;
struct TYPE_7__ {int /*<<< orphan*/ * bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct qeth_hdr*,int) ; 
#define  QETH_HEADER_TYPE_LAYER2 129 
#define  QETH_HEADER_TYPE_OSN 128 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct qeth_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qeth_hdr**) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_bytes ; 
 int /*<<< orphan*/  rx_packets ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct qeth_hdr*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC14(struct qeth_card *card,
				int budget, int *done)
{
	int work_done = 0;
	struct sk_buff *skb;
	struct qeth_hdr *hdr;
	unsigned int len;

	*done = 0;
	FUNC5(!budget);
	while (budget) {
		skb = FUNC9(card,
			&card->qdio.in_q->bufs[card->rx.b_index],
			&card->rx.b_element, &card->rx.e_offset, &hdr);
		if (!skb) {
			*done = 1;
			break;
		}
		switch (hdr->hdr.l2.id) {
		case QETH_HEADER_TYPE_LAYER2:
			skb->protocol = FUNC7(skb, skb->dev);
			FUNC10(card, skb, hdr->hdr.l2.flags[1]);
			len = skb->len;
			FUNC8(&card->napi, skb);
			break;
		case QETH_HEADER_TYPE_OSN:
			if (FUNC0(card)) {
				FUNC12(skb, sizeof(struct qeth_hdr));
				FUNC11(skb, hdr,
						sizeof(struct qeth_hdr));
				len = skb->len;
				card->osn_info.data_cb(skb);
				break;
			}
			/* Else, fall through */
		default:
			FUNC6(skb);
			FUNC3(card, 3, "inbunkno");
			FUNC4(CTRL, 3, hdr, sizeof(*hdr));
			continue;
		}
		work_done++;
		budget--;
		FUNC2(card, rx_packets);
		FUNC1(card, rx_bytes, len);
	}
	return work_done;
}