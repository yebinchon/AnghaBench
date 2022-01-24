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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {struct ci_hdrc* private; } ;
struct ci_hw_qh {int dummy; } ;
struct TYPE_2__ {scalar_t__ ptr; scalar_t__ dma; } ;
struct ci_hw_ep {TYPE_1__ qh; } ;
struct ci_hdrc {scalar_t__ role; int hw_ep_max; int /*<<< orphan*/  lock; struct ci_hw_ep* ci_hw_ep; } ;

/* Variables and functions */
 scalar_t__ CI_ROLE_GADGET ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *data)
{
	struct ci_hdrc *ci = s->private;
	unsigned long flags;
	unsigned i, j;

	if (ci->role != CI_ROLE_GADGET) {
		FUNC0(s, "not in gadget mode\n");
		return 0;
	}

	FUNC1(&ci->lock, flags);
	for (i = 0; i < ci->hw_ep_max/2; i++) {
		struct ci_hw_ep *hweprx = &ci->ci_hw_ep[i];
		struct ci_hw_ep *hweptx =
			&ci->ci_hw_ep[i + ci->hw_ep_max/2];
		FUNC0(s, "EP=%02i: RX=%08X TX=%08X\n",
			   i, (u32)hweprx->qh.dma, (u32)hweptx->qh.dma);
		for (j = 0; j < (sizeof(struct ci_hw_qh)/sizeof(u32)); j++)
			FUNC0(s, " %04X:    %08X    %08X\n", j,
				   *((u32 *)hweprx->qh.ptr + j),
				   *((u32 *)hweptx->qh.ptr + j));
	}
	FUNC2(&ci->lock, flags);

	return 0;
}