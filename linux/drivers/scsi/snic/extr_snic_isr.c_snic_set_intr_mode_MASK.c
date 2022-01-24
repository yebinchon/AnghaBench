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
struct snic {unsigned int wq_count; unsigned int cq_count; unsigned int intr_count; int /*<<< orphan*/  vdev; int /*<<< orphan*/  shost; int /*<<< orphan*/  err_intr_offset; int /*<<< orphan*/  pdev; int /*<<< orphan*/  intr; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 unsigned int SNIC_CQ_IO_CMPL_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SNIC_MSIX_ERR_NOTIFY ; 
 int /*<<< orphan*/  VNIC_DEV_INTR_MODE_MSIX ; 
 int /*<<< orphan*/  VNIC_DEV_INTR_MODE_UNKNOWN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct snic *snic)
{
	unsigned int n = FUNC0(snic->wq);
	unsigned int m = SNIC_CQ_IO_CMPL_MAX;
	unsigned int vecs = n + m + 1;

	/*
	 * We need n WQs, m CQs, and n+m+1 INTRs
	 * (last INTR is used for WQ/CQ errors and notification area
	 */
	FUNC1((FUNC0(snic->wq) + SNIC_CQ_IO_CMPL_MAX) >
			FUNC0(snic->intr));

	if (snic->wq_count < n || snic->cq_count < n + m)
		goto fail;

	if (FUNC3(snic->pdev, vecs, vecs, PCI_IRQ_MSIX) < 0)
		goto fail;

	snic->wq_count = n;
	snic->cq_count = n + m;
	snic->intr_count = vecs;
	snic->err_intr_offset = SNIC_MSIX_ERR_NOTIFY;

	FUNC2(snic->shost, "Using MSI-X Interrupts\n");
	FUNC4(snic->vdev, VNIC_DEV_INTR_MODE_MSIX);
	return 0;
fail:
	FUNC4(snic->vdev, VNIC_DEV_INTR_MODE_UNKNOWN);
	return -EINVAL;
}