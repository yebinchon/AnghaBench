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
struct sk_buff {int dummy; } ;
struct qeth_qdio_buffer {struct sk_buff* rx_skb; struct qdio_buffer* buffer; } ;
struct TYPE_9__ {int pdu_length; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {int id; int pkt_length; } ;
struct TYPE_10__ {TYPE_3__ osn; TYPE_2__ l3; TYPE_1__ l2; } ;
struct qeth_hdr {TYPE_4__ hdr; } ;
struct TYPE_11__ {int rx_sg_cb; scalar_t__ cq; } ;
struct qeth_card {int /*<<< orphan*/  napi; TYPE_5__ options; int /*<<< orphan*/  force_alloc_skb; } ;
struct qdio_buffer_element {int length; struct qeth_hdr* addr; } ;
struct qdio_buffer {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,struct qdio_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,char*) ; 
 scalar_t__ QETH_CQ_ENABLED ; 
#define  QETH_HEADER_TYPE_LAYER2 130 
#define  QETH_HEADER_TYPE_LAYER3 129 
#define  QETH_HEADER_TYPE_OSN 128 
 int QETH_RX_PULL_LEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int,int) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_buffer_element*,struct sk_buff*,int,int) ; 
 scalar_t__ FUNC11 (struct qdio_buffer_element*) ; 
 int /*<<< orphan*/  rx_dropped ; 
 int /*<<< orphan*/  rx_errors ; 
 int /*<<< orphan*/  rx_sg_frags ; 
 int /*<<< orphan*/  rx_sg_skbs ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 TYPE_6__* FUNC14 (struct sk_buff*) ; 

struct sk_buff *FUNC15(struct qeth_card *card,
		struct qeth_qdio_buffer *qethbuffer,
		struct qdio_buffer_element **__element, int *__offset,
		struct qeth_hdr **hdr)
{
	struct qdio_buffer_element *element = *__element;
	struct qdio_buffer *buffer = qethbuffer->buffer;
	int offset = *__offset;
	struct sk_buff *skb;
	int skb_len = 0;
	void *data_ptr;
	int data_len;
	int headroom = 0;
	int use_rx_sg = 0;

	/* qeth_hdr must not cross element boundaries */
	while (element->length < offset + sizeof(struct qeth_hdr)) {
		if (FUNC11(element))
			return NULL;
		element++;
		offset = 0;
	}
	*hdr = element->addr + offset;

	offset += sizeof(struct qeth_hdr);
	switch ((*hdr)->hdr.l2.id) {
	case QETH_HEADER_TYPE_LAYER2:
		skb_len = (*hdr)->hdr.l2.pkt_length;
		break;
	case QETH_HEADER_TYPE_LAYER3:
		skb_len = (*hdr)->hdr.l3.length;
		headroom = ETH_HLEN;
		break;
	case QETH_HEADER_TYPE_OSN:
		skb_len = (*hdr)->hdr.osn.pdu_length;
		headroom = sizeof(struct qeth_hdr);
		break;
	default:
		break;
	}

	if (!skb_len)
		return NULL;

	if (((skb_len >= card->options.rx_sg_cb) &&
	     !FUNC0(card) &&
	     (!FUNC5(&card->force_alloc_skb))) ||
	    (card->options.cq == QETH_CQ_ENABLED))
		use_rx_sg = 1;

	if (use_rx_sg && qethbuffer->rx_skb) {
		/* QETH_CQ_ENABLED only: */
		skb = qethbuffer->rx_skb;
		qethbuffer->rx_skb = NULL;
	} else {
		unsigned int linear = (use_rx_sg) ? QETH_RX_PULL_LEN : skb_len;

		skb = FUNC8(&card->napi, linear + headroom);
	}
	if (!skb)
		goto no_mem;
	if (headroom)
		FUNC13(skb, headroom);

	data_ptr = element->addr + offset;
	while (skb_len) {
		data_len = FUNC7(skb_len, (int)(element->length - offset));
		if (data_len) {
			if (use_rx_sg)
				FUNC10(element, skb, offset,
						     data_len);
			else
				FUNC12(skb, data_ptr, data_len);
		}
		skb_len -= data_len;
		if (skb_len) {
			if (FUNC11(element)) {
				FUNC4(card, 4, "unexeob");
				FUNC1(card, 2, buffer, sizeof(void *));
				FUNC6(skb);
				FUNC3(card, rx_errors);
				return NULL;
			}
			element++;
			offset = 0;
			data_ptr = element->addr;
		} else {
			offset += data_len;
		}
	}
	*__element = element;
	*__offset = offset;
	if (use_rx_sg) {
		FUNC3(card, rx_sg_skbs);
		FUNC2(card, rx_sg_frags,
				   FUNC14(skb)->nr_frags);
	}
	return skb;
no_mem:
	if (FUNC9()) {
		FUNC4(card, 2, "noskbmem");
	}
	FUNC3(card, rx_dropped);
	return NULL;
}