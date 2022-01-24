#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__* bas; } ;
struct bc_state {int rx_bufsize; TYPE_2__ hw; struct sk_buff* rx_skb; int /*<<< orphan*/  ignore; } ;
struct TYPE_3__ {int /*<<< orphan*/  goodbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_STREAM_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (struct bc_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct bc_state*,struct sk_buff*) ; 
 unsigned char* FUNC4 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(unsigned char *src, unsigned count,
				 struct bc_state *bcs)
{
	struct sk_buff *skb;
	int dobytes;
	unsigned char *dst;

	if (FUNC5(bcs->ignore)) {
		bcs->ignore--;
		return;
	}
	skb = bcs->rx_skb;
	if (skb == NULL) {
		skb = FUNC2(bcs);
		if (skb == NULL)
			return;
	}
	dobytes = bcs->rx_bufsize - skb->len;
	while (count > 0) {
		dst = FUNC4(skb, count < dobytes ? count : dobytes);
		while (count > 0 && dobytes > 0) {
			*dst++ = FUNC0(*src++);
			count--;
			dobytes--;
		}
		if (dobytes == 0) {
			FUNC1(DEBUG_STREAM_DUMP,
				   "rcv data", skb->data, skb->len);
			bcs->hw.bas->goodbytes += skb->len;
			FUNC3(bcs, skb);
			skb = FUNC2(bcs);
			if (skb == NULL)
				return;
			dobytes = bcs->rx_bufsize;
		}
	}
}