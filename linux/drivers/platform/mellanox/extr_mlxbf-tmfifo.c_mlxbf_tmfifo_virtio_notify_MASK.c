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
struct virtqueue {struct mlxbf_tmfifo_vring* priv; } ;
struct mlxbf_tmfifo_vring {int index; size_t vdev_id; struct mlxbf_tmfifo* fifo; } ;
struct mlxbf_tmfifo_vdev {int dummy; } ;
struct mlxbf_tmfifo {int /*<<< orphan*/  work; int /*<<< orphan*/  pend_events; int /*<<< orphan*/  spin_lock; struct mlxbf_tmfifo_vdev** vdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXBF_TM_RX_HWM_IRQ ; 
 int /*<<< orphan*/  MLXBF_TM_TX_LWM_IRQ ; 
 size_t VIRTIO_ID_CONSOLE ; 
 int /*<<< orphan*/  FUNC1 (struct mlxbf_tmfifo_vdev*,struct mlxbf_tmfifo_vring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct virtqueue *vq)
{
	struct mlxbf_tmfifo_vring *vring = vq->priv;
	struct mlxbf_tmfifo_vdev *tm_vdev;
	struct mlxbf_tmfifo *fifo;
	unsigned long flags;

	fifo = vring->fifo;

	/*
	 * Virtio maintains vrings in pairs, even number ring for Rx
	 * and odd number ring for Tx.
	 */
	if (vring->index & FUNC0(0)) {
		/*
		 * Console could make blocking call with interrupts disabled.
		 * In such case, the vring needs to be served right away. For
		 * other cases, just set the TX LWM bit to start Tx in the
		 * worker handler.
		 */
		if (vring->vdev_id == VIRTIO_ID_CONSOLE) {
			FUNC3(&fifo->spin_lock, flags);
			tm_vdev = fifo->vdev[VIRTIO_ID_CONSOLE];
			FUNC1(tm_vdev, vring);
			FUNC4(&fifo->spin_lock, flags);
		} else if (FUNC5(MLXBF_TM_TX_LWM_IRQ,
					    &fifo->pend_events)) {
			return true;
		}
	} else {
		if (FUNC5(MLXBF_TM_RX_HWM_IRQ, &fifo->pend_events))
			return true;
	}

	FUNC2(&fifo->work);

	return true;
}