#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vhost_net {int tx_flush; TYPE_2__* vqs; } ;
struct TYPE_6__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {TYPE_1__ vq; TYPE_3__* ubufs; } ;

/* Variables and functions */
 size_t VHOST_NET_VQ_RX ; 
 size_t VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_net*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(struct vhost_net *n)
{
	FUNC3(n, VHOST_NET_VQ_TX);
	FUNC3(n, VHOST_NET_VQ_RX);
	if (n->vqs[VHOST_NET_VQ_TX].ubufs) {
		FUNC1(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);
		n->tx_flush = true;
		FUNC2(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);
		/* Wait for all lower device DMAs done. */
		FUNC4(n->vqs[VHOST_NET_VQ_TX].ubufs);
		FUNC1(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);
		n->tx_flush = false;
		FUNC0(&n->vqs[VHOST_NET_VQ_TX].ubufs->refcount, 1);
		FUNC2(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);
	}
}