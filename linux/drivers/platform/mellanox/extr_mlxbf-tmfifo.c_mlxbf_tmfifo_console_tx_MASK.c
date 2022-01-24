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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {void* buf; int tail; int /*<<< orphan*/  head; } ;
struct mlxbf_tmfifo_vdev {TYPE_1__ tx_buf; } ;
struct mlxbf_tmfifo_msg_hdr {size_t type; int /*<<< orphan*/  len; } ;
struct mlxbf_tmfifo {int /*<<< orphan*/  spin_lock; scalar_t__ tx_base; struct mlxbf_tmfifo_vdev** vdev; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int MLXBF_TMFIFO_CON_TX_BUF_SIZE ; 
 int MLXBF_TMFIFO_DATA_MIN_WORDS ; 
 scalar_t__ MLXBF_TMFIFO_TX_DATA ; 
 size_t VIRTIO_ID_CONSOLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct mlxbf_tmfifo *fifo, int avail)
{
	struct mlxbf_tmfifo_msg_hdr hdr;
	struct mlxbf_tmfifo_vdev *cons;
	unsigned long flags;
	int size, seg;
	void *addr;
	u64 data;

	/* Return if not enough space available. */
	if (avail < MLXBF_TMFIFO_DATA_MIN_WORDS)
		return;

	cons = fifo->vdev[VIRTIO_ID_CONSOLE];
	if (!cons || !cons->tx_buf.buf)
		return;

	/* Return if no data to send. */
	size = FUNC0(cons->tx_buf.head, cons->tx_buf.tail,
			MLXBF_TMFIFO_CON_TX_BUF_SIZE);
	if (size == 0)
		return;

	/* Adjust the size to available space. */
	if (size + sizeof(hdr) > avail * sizeof(u64))
		size = avail * sizeof(u64) - sizeof(hdr);

	/* Write header. */
	hdr.type = VIRTIO_ID_CONSOLE;
	hdr.len = FUNC2(size);
	FUNC6(*(u64 *)&hdr, fifo->tx_base + MLXBF_TMFIFO_TX_DATA);

	/* Use spin-lock to protect the 'cons->tx_buf'. */
	FUNC4(&fifo->spin_lock, flags);

	while (size > 0) {
		addr = cons->tx_buf.buf + cons->tx_buf.tail;

		seg = FUNC1(cons->tx_buf.head, cons->tx_buf.tail,
				      MLXBF_TMFIFO_CON_TX_BUF_SIZE);
		if (seg >= sizeof(u64)) {
			FUNC3(&data, addr, sizeof(u64));
		} else {
			FUNC3(&data, addr, seg);
			FUNC3((u8 *)&data + seg, cons->tx_buf.buf,
			       sizeof(u64) - seg);
		}
		FUNC6(data, fifo->tx_base + MLXBF_TMFIFO_TX_DATA);

		if (size >= sizeof(u64)) {
			cons->tx_buf.tail = (cons->tx_buf.tail + sizeof(u64)) %
				MLXBF_TMFIFO_CON_TX_BUF_SIZE;
			size -= sizeof(u64);
		} else {
			cons->tx_buf.tail = (cons->tx_buf.tail + size) %
				MLXBF_TMFIFO_CON_TX_BUF_SIZE;
			size = 0;
		}
	}

	FUNC5(&fifo->spin_lock, flags);
}