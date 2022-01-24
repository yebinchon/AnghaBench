#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pp_ctx {int pmask; int nmask; int /*<<< orphan*/  in_db; TYPE_1__* ntb; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct pp_ctx *pp)
{
	int pidx, lport, pcnt;

	/* Find global port index */
	lport = FUNC5(pp->ntb);
	pcnt = FUNC3(pp->ntb);
	for (pidx = 0; pidx < pcnt; pidx++) {
		if (lport < FUNC4(pp->ntb, pidx))
			break;
	}

	pp->in_db = FUNC0(pidx);
	pp->pmask = FUNC1(pidx, 0) >> 1;
	pp->nmask = FUNC1(pcnt - 1, pidx);

	FUNC2(&pp->ntb->dev, "Inbound db %#llx, prev %#llx, next %#llx\n",
		pp->in_db, pp->pmask, pp->nmask);
}