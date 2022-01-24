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
struct nvmet_fc_tgtport {struct nvmet_fc_port_entry* pe; } ;
struct nvmet_fc_port_entry {int /*<<< orphan*/ * tgtport; } ;

/* Variables and functions */
 int /*<<< orphan*/  nvmet_fc_tgtlock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC2(struct nvmet_fc_tgtport *tgtport)
{
	struct nvmet_fc_port_entry *pe;
	unsigned long flags;

	FUNC0(&nvmet_fc_tgtlock, flags);
	pe = tgtport->pe;
	if (pe)
		pe->tgtport = NULL;
	tgtport->pe = NULL;
	FUNC1(&nvmet_fc_tgtlock, flags);
}