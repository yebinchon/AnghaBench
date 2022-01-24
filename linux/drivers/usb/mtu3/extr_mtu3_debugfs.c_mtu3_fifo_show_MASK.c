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
struct seq_file {struct mtu3_ep* private; } ;
struct mtu3_ep {int /*<<< orphan*/  fifo_size; int /*<<< orphan*/  fifo_addr; int /*<<< orphan*/  fifo_seg_size; struct mtu3* mtu; } ;
struct mtu3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct seq_file *sf, void *unused)
{
	struct mtu3_ep *mep = sf->private;
	struct mtu3 *mtu = mep->mtu;
	unsigned long flags;

	FUNC1(&mtu->lock, flags);
	FUNC0(sf, "fifo - seg_size:%d, addr:%d, size:%d\n",
		   mep->fifo_seg_size, mep->fifo_addr, mep->fifo_size);
	FUNC2(&mtu->lock, flags);

	return 0;
}