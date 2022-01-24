#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  addr_offset; } ;
struct ntb_transport_qp {scalar_t__ msi_irq; TYPE_3__ msi_desc; TYPE_2__* ndev; } ;
struct ntb_transport_ctx {unsigned int msi_spad_offset; TYPE_5__* ndev; int /*<<< orphan*/  use_msi; struct ntb_transport_qp* qp_vec; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,struct ntb_transport_qp*) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntb_transport_isr ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntb_transport_qp*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(struct ntb_transport_ctx *nt,
				       unsigned int qp_num)
{
	struct ntb_transport_qp *qp = &nt->qp_vec[qp_num];
	int spad = qp_num * 2 + nt->msi_spad_offset;
	int rc;

	if (!nt->use_msi)
		return;

	if (spad >= FUNC4(nt->ndev)) {
		FUNC2(&qp->ndev->pdev->dev,
			      "Not enough SPADS to use MSI interrupts\n");
		return;
	}

	FUNC5(qp->ndev, spad, 0);
	FUNC5(qp->ndev, spad + 1, 0);

	if (!qp->msi_irq) {
		qp->msi_irq = FUNC6(qp->ndev, ntb_transport_isr,
						   KBUILD_MODNAME, qp,
						   &qp->msi_desc);
		if (qp->msi_irq < 0) {
			FUNC1(&qp->ndev->pdev->dev,
				 "Unable to allocate MSI interrupt for qp%d\n",
				 qp_num);
			return;
		}
	}

	rc = FUNC5(qp->ndev, spad, qp->msi_desc.addr_offset);
	if (rc)
		goto err_free_interrupt;

	rc = FUNC5(qp->ndev, spad + 1, qp->msi_desc.data);
	if (rc)
		goto err_free_interrupt;

	FUNC0(&qp->ndev->pdev->dev, "QP%d MSI %d addr=%x data=%x\n",
		qp_num, qp->msi_irq, qp->msi_desc.addr_offset,
		qp->msi_desc.data);

	return;

err_free_interrupt:
	FUNC3(&nt->ndev->dev, qp->msi_irq, qp);
}