#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct csio_lnode {int /*<<< orphan*/  flags; TYPE_2__* mgmt_req; } ;
struct csio_ioreq {int dummy; } ;
struct csio_hw {TYPE_1__* pdev; } ;
struct csio_dma_buf {int len; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  paddr; } ;
struct TYPE_5__ {struct csio_dma_buf dma_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_LNF_FDMI_ENABLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,char*) ; 
 struct csio_hw* FUNC3 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC7(struct csio_lnode *ln)
{
	struct csio_hw *hw = FUNC3(ln);
	struct csio_dma_buf	*dma_buf;

	/* Allocate MGMT request required for FDMI */
	ln->mgmt_req = FUNC6(sizeof(struct csio_ioreq), GFP_KERNEL);
	if (!ln->mgmt_req) {
		FUNC2(ln, "Failed to alloc ioreq for FDMI\n");
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}

	/* Allocate Dma buffers for FDMI response Payload */
	dma_buf = &ln->mgmt_req->dma_buf;
	dma_buf->len = 2048;
	dma_buf->vaddr = FUNC4(&hw->pdev->dev, dma_buf->len,
						&dma_buf->paddr, GFP_KERNEL);
	if (!dma_buf->vaddr) {
		FUNC1(hw, "Failed to alloc DMA buffer for FDMI!\n");
		FUNC5(ln->mgmt_req);
		ln->mgmt_req = NULL;
		return -ENOMEM;
	}

	ln->flags |= CSIO_LNF_FDMI_ENABLE;
	return 0;
}