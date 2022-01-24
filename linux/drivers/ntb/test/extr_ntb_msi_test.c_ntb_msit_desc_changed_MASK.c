#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ntb_msit_ctx {TYPE_3__* ntb; TYPE_2__* isr_ctx; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  addr_offset; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int num_irqs ; 

__attribute__((used)) static void FUNC5(void *ctx)
{
	struct ntb_msit_ctx *nm = ctx;
	int i;

	FUNC1(&nm->ntb->dev, "MSI Descriptors Changed\n");

	for (i = 0; i < num_irqs; i++) {
		FUNC4(nm->ntb, 2 * i + 1,
			       nm->isr_ctx[i].desc.addr_offset);
		FUNC4(nm->ntb, 2 * i + 2,
			       nm->isr_ctx[i].desc.data);
	}

	FUNC2(nm->ntb, FUNC0(FUNC3(nm->ntb)));
}