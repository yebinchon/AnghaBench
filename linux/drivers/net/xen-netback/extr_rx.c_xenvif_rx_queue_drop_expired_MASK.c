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
struct xenvif_queue {int /*<<< orphan*/  rx_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif_queue*) ; 

__attribute__((used)) static void FUNC5(struct xenvif_queue *queue)
{
	struct sk_buff *skb;

	for (;;) {
		skb = FUNC2(&queue->rx_queue);
		if (!skb)
			break;
		if (FUNC3(jiffies, FUNC0(skb)->expires))
			break;
		FUNC4(queue);
		FUNC1(skb);
	}
}