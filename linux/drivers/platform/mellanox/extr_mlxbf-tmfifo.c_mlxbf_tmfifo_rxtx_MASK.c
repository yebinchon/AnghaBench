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
struct mlxbf_tmfifo_vring {int vdev_id; struct mlxbf_tmfifo* fifo; } ;
struct mlxbf_tmfifo {struct mlxbf_tmfifo_vring** vring; int /*<<< orphan*/ * vdev; } ;

/* Variables and functions */
 int VIRTIO_ID_CONSOLE ; 
 int VIRTIO_ID_NET ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxbf_tmfifo*,int) ; 
 int FUNC2 (struct mlxbf_tmfifo*) ; 
 int FUNC3 (struct mlxbf_tmfifo*,int) ; 
 int FUNC4 (struct mlxbf_tmfifo_vring*,int,int*) ; 

__attribute__((used)) static void FUNC5(struct mlxbf_tmfifo_vring *vring, bool is_rx)
{
	int avail = 0, devid = vring->vdev_id;
	struct mlxbf_tmfifo *fifo;
	bool more;

	fifo = vring->fifo;

	/* Return if vdev is not ready. */
	if (!fifo->vdev[devid])
		return;

	/* Return if another vring is running. */
	if (fifo->vring[is_rx] && fifo->vring[is_rx] != vring)
		return;

	/* Only handle console and network for now. */
	if (FUNC0(devid != VIRTIO_ID_NET && devid != VIRTIO_ID_CONSOLE))
		return;

	do {
		/* Get available FIFO space. */
		if (avail == 0) {
			if (is_rx)
				avail = FUNC2(fifo);
			else
				avail = FUNC3(fifo, devid);
			if (avail <= 0)
				break;
		}

		/* Console output always comes from the Tx buffer. */
		if (!is_rx && devid == VIRTIO_ID_CONSOLE) {
			FUNC1(fifo, avail);
			break;
		}

		/* Handle one descriptor. */
		more = FUNC4(vring, is_rx, &avail);
	} while (more);
}