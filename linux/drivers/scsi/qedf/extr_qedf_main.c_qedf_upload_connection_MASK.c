#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qedf_rport {int /*<<< orphan*/  handle; TYPE_2__* rdata; } ;
struct qedf_ctx {TYPE_3__* pdev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  dbg_ctx; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* release_conn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* destroy_conn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_6__ {TYPE_1__ ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QEDF_LOG_CONN ; 
 int /*<<< orphan*/  QEDF_TERM_BUFF_SIZE ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 TYPE_4__* qed_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qedf_ctx *qedf,
	struct qedf_rport *fcport)
{
	void *term_params;
	dma_addr_t term_params_dma;

	/* Term params needs to be a DMA coherent buffer as qed shared the
	 * physical DMA address with the firmware. The buffer may be used in
	 * the receive path so we may eventually have to move this.
	 */
	term_params = FUNC1(&qedf->pdev->dev, QEDF_TERM_BUFF_SIZE,
		&term_params_dma, GFP_KERNEL);

	FUNC0(&(qedf->dbg_ctx), QEDF_LOG_CONN, "Uploading connection "
		   "port_id=%06x.\n", fcport->rdata->ids.port_id);

	qed_ops->destroy_conn(qedf->cdev, fcport->handle, term_params_dma);
	qed_ops->release_conn(qedf->cdev, fcport->handle);

	FUNC2(&qedf->pdev->dev, QEDF_TERM_BUFF_SIZE, term_params,
	    term_params_dma);
}