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
typedef  size_t u32 ;
struct vring_desc {int /*<<< orphan*/  next; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct vring {struct vring_desc* desc; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {int /*<<< orphan*/  vq; } ;
struct TYPE_2__ {size_t head; scalar_t__ buf; int /*<<< orphan*/  tail; } ;
struct mlxbf_tmfifo_vdev {TYPE_1__ tx_buf; struct virtio_device vdev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ,size_t) ; 
 size_t MLXBF_TMFIFO_CON_TX_BUF_SIZE ; 
 size_t VRING_DESC_F_NEXT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 struct vring* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mlxbf_tmfifo_vdev *cons,
					    struct mlxbf_tmfifo_vring *vring,
					    struct vring_desc *desc)
{
	const struct vring *vr = FUNC6(vring->vq);
	struct virtio_device *vdev = &cons->vdev;
	u32 len, idx, seg;
	void *addr;

	while (desc) {
		addr = FUNC2(FUNC5(vdev, desc->addr));
		len = FUNC4(vdev, desc->len);

		seg = FUNC0(cons->tx_buf.head, cons->tx_buf.tail,
					MLXBF_TMFIFO_CON_TX_BUF_SIZE);
		if (len <= seg) {
			FUNC1(cons->tx_buf.buf + cons->tx_buf.head, addr, len);
		} else {
			FUNC1(cons->tx_buf.buf + cons->tx_buf.head, addr, seg);
			addr += seg;
			FUNC1(cons->tx_buf.buf, addr, len - seg);
		}
		cons->tx_buf.head = (cons->tx_buf.head + len) %
			MLXBF_TMFIFO_CON_TX_BUF_SIZE;

		if (!(FUNC3(vdev, desc->flags) & VRING_DESC_F_NEXT))
			break;
		idx = FUNC3(vdev, desc->next);
		desc = &vr->desc[idx];
	}
}