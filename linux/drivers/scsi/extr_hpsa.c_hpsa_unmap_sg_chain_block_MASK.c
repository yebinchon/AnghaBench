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
struct ctlr_info {int max_cmd_sg_entries; TYPE_2__* pdev; } ;
struct SGDescriptor {int /*<<< orphan*/  Len; int /*<<< orphan*/  Addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  SGTotal; } ;
struct CommandList {struct SGDescriptor* SG; TYPE_1__ Header; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ctlr_info *h,
	struct CommandList *c)
{
	struct SGDescriptor *chain_sg;

	if (FUNC1(c->Header.SGTotal) <= h->max_cmd_sg_entries)
		return;

	chain_sg = &c->SG[h->max_cmd_sg_entries - 1];
	FUNC0(&h->pdev->dev, FUNC3(chain_sg->Addr),
			FUNC2(chain_sg->Len), DMA_TO_DEVICE);
}