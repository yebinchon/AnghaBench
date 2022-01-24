#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ntb_msit_ctx {TYPE_1__* peers; TYPE_2__* ntb; } ;
struct ntb_msi_desc {void* data; void* addr_offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int num_irqs; int /*<<< orphan*/  init_comp; struct ntb_msi_desc* msi_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 void* FUNC2 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC3(struct ntb_msit_ctx *nm, int peer)
{
	int i;
	struct ntb_msi_desc *desc = nm->peers[peer].msi_desc;
	int irq_count = nm->peers[peer].num_irqs;

	for (i = 0; i < irq_count; i++) {
		desc[i].addr_offset = FUNC2(nm->ntb, peer,
							 2 * i + 1);
		desc[i].data = FUNC2(nm->ntb, peer, 2 * i + 2);
	}

	FUNC1(&nm->ntb->dev, "Found %d interrupts on peer %d\n",
		 irq_count, peer);

	FUNC0(&nm->peers[peer].init_comp);
}