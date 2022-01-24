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
struct vhost_net_buf {scalar_t__ tail; scalar_t__ head; scalar_t__ queue; } ;
struct vhost_net_virtqueue {scalar_t__ rx_ring; struct vhost_net_buf rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tun_ptr_free ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_net_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_net_buf*) ; 

__attribute__((used)) static void FUNC3(struct vhost_net_virtqueue *nvq)
{
	struct vhost_net_buf *rxq = &nvq->rxq;

	if (nvq->rx_ring && !FUNC2(rxq)) {
		FUNC0(nvq->rx_ring, rxq->queue + rxq->head,
				   FUNC1(rxq),
				   tun_ptr_free);
		rxq->head = rxq->tail = 0;
	}
}