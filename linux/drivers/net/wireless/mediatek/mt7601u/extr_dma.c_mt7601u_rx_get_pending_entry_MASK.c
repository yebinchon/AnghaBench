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
struct mt7601u_rx_queue {size_t start; int entries; int /*<<< orphan*/  pending; struct mt7601u_dma_buf_rx* e; } ;
struct mt7601u_dma_buf_rx {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  rx_lock; struct mt7601u_rx_queue rx_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct mt7601u_dma_buf_rx *
FUNC2(struct mt7601u_dev *dev)
{
	struct mt7601u_rx_queue *q = &dev->rx_q;
	struct mt7601u_dma_buf_rx *buf = NULL;
	unsigned long flags;

	FUNC0(&dev->rx_lock, flags);

	if (!q->pending)
		goto out;

	buf = &q->e[q->start];
	q->pending--;
	q->start = (q->start + 1) % q->entries;
out:
	FUNC1(&dev->rx_lock, flags);

	return buf;
}