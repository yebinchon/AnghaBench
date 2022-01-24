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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct qdio_buffer_element {scalar_t__ addr; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int,struct page*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__,unsigned int) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct page* FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct qdio_buffer_element *element,
				 struct sk_buff *skb, int offset, int data_len)
{
	struct page *page = FUNC6(element->addr);
	unsigned int next_frag;

	/* first fill the linear space */
	if (!skb->len) {
		unsigned int linear = FUNC1(data_len, FUNC5(skb));

		FUNC3(skb, element->addr + offset, linear);
		data_len -= linear;
		if (!data_len)
			return;
		offset += linear;
		/* fall through to add page frag for remaining data */
	}

	next_frag = FUNC4(skb)->nr_frags;
	FUNC0(page);
	FUNC2(skb, next_frag, page, offset, data_len, data_len);
}