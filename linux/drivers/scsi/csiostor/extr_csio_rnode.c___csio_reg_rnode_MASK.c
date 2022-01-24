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
struct csio_rnode {int role; scalar_t__ nport_id; } ;
struct csio_lnode {int /*<<< orphan*/  n_scsi_tgts; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CSIO_RNFR_TARGET ; 
 scalar_t__ FC_FID_MGMT_SERV ; 
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,void*) ; 
 struct csio_hw* FUNC1 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_rnode*) ; 
 struct csio_lnode* FUNC3 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct csio_rnode *rn)
{
	struct csio_lnode *ln = FUNC3(rn);
	struct csio_hw *hw = FUNC1(ln);

	FUNC5(&hw->lock);
	FUNC2(rn);
	FUNC4(&hw->lock);

	if (rn->role & CSIO_RNFR_TARGET)
		ln->n_scsi_tgts++;

	if (rn->nport_id == FC_FID_MGMT_SERV)
		FUNC0(ln, (void *) rn);
}