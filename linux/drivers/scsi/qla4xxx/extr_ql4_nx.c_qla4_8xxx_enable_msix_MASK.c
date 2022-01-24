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
struct scsi_qla_host {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  QLA_MSIX_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qla4_8xxx_default_intr_handler ; 
 int /*<<< orphan*/  qla4_8xxx_msix_rsp_q ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct scsi_qla_host*) ; 

int
FUNC6(struct scsi_qla_host *ha)
{
	int ret;

	ret = FUNC1(ha->pdev, QLA_MSIX_ENTRIES,
			QLA_MSIX_ENTRIES, PCI_IRQ_MSIX);
	if (ret < 0) {
		FUNC4(KERN_WARNING, ha,
		    "MSI-X: Failed to enable support -- %d/%d\n",
		    QLA_MSIX_ENTRIES, ret);
		return ret;
	}

	ret = FUNC5(FUNC3(ha->pdev, 0),
			qla4_8xxx_default_intr_handler, 0, "qla4xxx (default)",
			ha);
	if (ret)
		goto out_free_vectors;

	ret = FUNC5(FUNC3(ha->pdev, 1),
			qla4_8xxx_msix_rsp_q, 0, "qla4xxx (rsp_q)", ha);
	if (ret)
		goto out_free_default_irq;

	return 0;

out_free_default_irq:
	FUNC0(FUNC3(ha->pdev, 0), ha);
out_free_vectors:
	FUNC2(ha->pdev);
	return ret;
}