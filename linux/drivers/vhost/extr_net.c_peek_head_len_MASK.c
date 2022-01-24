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
struct vhost_net_virtqueue {scalar_t__ rx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sock {TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int len; } ;

/* Variables and functions */
 scalar_t__ VLAN_HLEN ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct vhost_net_virtqueue*) ; 

__attribute__((used)) static int FUNC6(struct vhost_net_virtqueue *rvq, struct sock *sk)
{
	struct sk_buff *head;
	int len = 0;
	unsigned long flags;

	if (rvq->rx_ring)
		return FUNC5(rvq);

	FUNC3(&sk->sk_receive_queue.lock, flags);
	head = FUNC1(&sk->sk_receive_queue);
	if (FUNC0(head)) {
		len = head->len;
		if (FUNC2(head))
			len += VLAN_HLEN;
	}

	FUNC4(&sk->sk_receive_queue.lock, flags);
	return len;
}