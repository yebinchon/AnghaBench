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
typedef  int uint32_t ;
struct fc_fdmi_port_name {int /*<<< orphan*/  portname; } ;
struct csio_lnode {int dummy; } ;
struct TYPE_2__ {void* vaddr; } ;
struct csio_ioreq {TYPE_1__ dma_buf; int /*<<< orphan*/  rnode; int /*<<< orphan*/  wr_status; struct csio_lnode* lnode; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FCOE_CT ; 
 int FC_CT_HDR_LEN ; 
 int /*<<< orphan*/  FC_FDMI_DPRT ; 
 int /*<<< orphan*/  FC_FDMI_SUBTYPE ; 
 int /*<<< orphan*/  FC_FST_MGMT ; 
 scalar_t__ FC_FS_ACC ; 
 int /*<<< orphan*/  FW_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_lnode*,char*,...) ; 
 int /*<<< orphan*/  csio_ln_fdmi_dprt_cbfn ; 
 scalar_t__ FUNC8 (struct csio_ioreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  n_fdmi_err ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct csio_hw *hw, struct csio_ioreq *fdmi_req)
{
	struct csio_lnode *ln = fdmi_req->lnode;
	void *cmd;
	struct fc_fdmi_port_name *port_name;
	uint32_t len;

	if (fdmi_req->wr_status != FW_SUCCESS) {
		FUNC7(ln, "WR error:%x in processing fdmi dhba cmd\n",
			    fdmi_req->wr_status);
		FUNC0(ln, n_fdmi_err);
	}

	if (!FUNC6(fdmi_req->rnode)) {
		FUNC0(ln, n_fdmi_err);
		return;
	}
	cmd = fdmi_req->dma_buf.vaddr;
	if (FUNC12(FUNC4(cmd)) != FC_FS_ACC) {
		FUNC7(ln, "fdmi dhba cmd rejected reason %x expl %x\n",
			    FUNC3(cmd), FUNC1(cmd));
	}

	/* Send FDMI cmd to de-register any Port attributes if registered
	 * before
	 */

	/* Prepare FDMI DPRT cmd */
	FUNC11(cmd, 0, FC_CT_HDR_LEN);
	FUNC5(cmd, FC_FST_MGMT, FC_FDMI_SUBTYPE, FC_FDMI_DPRT);
	len = FC_CT_HDR_LEN;
	port_name = (struct fc_fdmi_port_name *)FUNC2(cmd);
	FUNC10(&port_name->portname, FUNC9(ln), 8);
	len += sizeof(*port_name);

	/* Submit FDMI request */
	FUNC13(&hw->lock);
	if (FUNC8(fdmi_req, csio_ln_fdmi_dprt_cbfn,
				FCOE_CT, &fdmi_req->dma_buf, len)) {
		FUNC0(ln, n_fdmi_err);
		FUNC7(ln, "Failed to issue fdmi dprt req\n");
	}
	FUNC14(&hw->lock);
}