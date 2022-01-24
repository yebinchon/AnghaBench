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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct qeth_qdio_out_q {unsigned int max_elements; } ;
struct qeth_hdr {int dummy; } ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int const,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int QETH_HDR_CACHE_OBJ_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ) ; 
 struct qeth_hdr* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_core_header_cache ; 
 int FUNC4 (struct sk_buff*,unsigned int) ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,char*,unsigned int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 struct qeth_hdr* FUNC10 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  skbs_linearized ; 
 int /*<<< orphan*/  skbs_linearized_fail ; 

__attribute__((used)) static int FUNC11(struct qeth_qdio_out_q *queue,
			      struct sk_buff *skb, struct qeth_hdr **hdr,
			      unsigned int hdr_len, unsigned int proto_len,
			      unsigned int *elements)
{
	const unsigned int contiguous = proto_len ? proto_len : 1;
	const unsigned int max_elements = queue->max_elements;
	unsigned int __elements;
	addr_t start, end;
	bool push_ok;
	int rc;

check_layout:
	start = (addr_t)skb->data - hdr_len;
	end = (addr_t)skb->data;

	if (FUNC5(start, end + contiguous) == 1) {
		/* Push HW header into same page as first protocol header. */
		push_ok = true;
		/* ... but TSO always needs a separate element for headers: */
		if (FUNC7(skb))
			__elements = 1 + FUNC4(skb, proto_len);
		else
			__elements = FUNC4(skb, 0);
	} else if (!proto_len && FUNC0(skb->data)) {
		/* Push HW header into preceding page, flush with skb->data. */
		push_ok = true;
		__elements = 1 + FUNC4(skb, 0);
	} else {
		/* Use header cache, copy protocol headers up. */
		push_ok = false;
		__elements = 1 + FUNC4(skb, proto_len);
	}

	/* Compress skb to fit into one IO buffer: */
	if (__elements > max_elements) {
		if (!FUNC8(skb)) {
			/* Drop it, no easy way of shrinking it further. */
			FUNC1(2, "Dropped an oversized skb (Max Elements=%u / Actual=%u / Length=%u).\n",
					 max_elements, __elements, skb->len);
			return -E2BIG;
		}

		rc = FUNC9(skb);
		if (rc) {
			FUNC2(queue, skbs_linearized_fail);
			return rc;
		}

		FUNC2(queue, skbs_linearized);
		/* Linearization changed the layout, re-evaluate: */
		goto check_layout;
	}

	*elements = __elements;
	/* Add the header: */
	if (push_ok) {
		*hdr = FUNC10(skb, hdr_len);
		return hdr_len;
	}
	/* fall back */
	if (hdr_len + proto_len > QETH_HDR_CACHE_OBJ_SIZE)
		return -E2BIG;
	*hdr = FUNC3(qeth_core_header_cache, GFP_ATOMIC);
	if (!*hdr)
		return -ENOMEM;
	/* Copy protocol headers behind HW header: */
	FUNC6(skb, ((char *)*hdr) + hdr_len, proto_len);
	return 0;
}