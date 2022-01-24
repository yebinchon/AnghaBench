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
struct csio_lnode {int dummy; } ;
struct TYPE_2__ {void* vaddr; } ;
struct csio_ioreq {TYPE_1__ dma_buf; int /*<<< orphan*/  wr_status; struct csio_lnode* lnode; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FC_FS_ACC ; 
 int /*<<< orphan*/  FW_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_lnode*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  n_fdmi_err ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct csio_hw *hw, struct csio_ioreq *fdmi_req)
{
	void *cmd;
	struct csio_lnode *ln = fdmi_req->lnode;

	if (fdmi_req->wr_status != FW_SUCCESS) {
		FUNC4(ln, "WR error:%x in processing fdmi rpa cmd\n",
			    fdmi_req->wr_status);
		FUNC0(ln, n_fdmi_err);
	}

	cmd = fdmi_req->dma_buf.vaddr;
	if (FUNC5(FUNC3(cmd)) != FC_FS_ACC) {
		FUNC4(ln, "fdmi rpa cmd rejected reason %x expl %x\n",
			    FUNC2(cmd), FUNC1(cmd));
	}
}