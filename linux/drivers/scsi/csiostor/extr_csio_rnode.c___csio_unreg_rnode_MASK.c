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
struct csio_rnode {int role; int /*<<< orphan*/  host_cmpl_q; } ;
struct csio_lnode {int /*<<< orphan*/  last_scan_ntgts; int /*<<< orphan*/  n_scsi_tgts; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CSIO_RNFR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 struct csio_hw* FUNC3 (struct csio_lnode*) ; 
 struct csio_lnode* FUNC4 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp_q ; 

__attribute__((used)) static void
FUNC11(struct csio_rnode *rn)
{
	struct csio_lnode *ln = FUNC4(rn);
	struct csio_hw *hw = FUNC3(ln);
	FUNC0(tmp_q);
	int cmpl = 0;

	if (!FUNC7(&rn->host_cmpl_q)) {
		FUNC1(hw, "Returning completion queue I/Os\n");
		FUNC8(&rn->host_cmpl_q, &tmp_q);
		cmpl = 1;
	}

	if (rn->role & CSIO_RNFR_TARGET) {
		ln->n_scsi_tgts--;
		ln->last_scan_ntgts--;
	}

	FUNC10(&hw->lock);
	FUNC6(rn);
	FUNC9(&hw->lock);

	/* Cleanup I/Os that were waiting for rnode to unregister */
	if (cmpl)
		FUNC5(FUNC2(hw), &tmp_q);

}