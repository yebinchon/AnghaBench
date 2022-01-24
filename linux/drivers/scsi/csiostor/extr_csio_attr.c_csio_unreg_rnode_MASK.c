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
struct fc_rport {int dummy; } ;
struct csio_rnode {int role; int /*<<< orphan*/  nport_id; struct fc_rport* rport; } ;
struct csio_lnode {int /*<<< orphan*/  num_reg_rnodes; } ;

/* Variables and functions */
 int CSIO_RNFR_INITIATOR ; 
 int CSIO_RNFR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,char*,int /*<<< orphan*/ ) ; 
 struct csio_lnode* FUNC1 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport*) ; 

void
FUNC3(struct csio_rnode *rn)
{
	struct csio_lnode *ln = FUNC1(rn);
	struct fc_rport *rport = rn->rport;

	rn->role &= ~(CSIO_RNFR_INITIATOR | CSIO_RNFR_TARGET);
	FUNC2(rport);
	ln->num_reg_rnodes--;

	FUNC0(ln, "Remote port x%x un-registered\n", rn->nport_id);
}