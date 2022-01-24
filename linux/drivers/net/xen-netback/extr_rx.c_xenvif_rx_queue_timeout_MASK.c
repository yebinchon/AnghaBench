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
struct TYPE_2__ {long expires; } ;

/* Variables and functions */
 long MAX_SCHEDULE_TIMEOUT ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 long jiffies ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC2(struct xenvif_queue *queue)
{
	struct sk_buff *skb;
	long timeout;

	skb = FUNC1(&queue->rx_queue);
	if (!skb)
		return MAX_SCHEDULE_TIMEOUT;

	timeout = FUNC0(skb)->expires - jiffies;
	return timeout < 0 ? 0 : timeout;
}