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
struct snic {char* name; TYPE_1__* msix; int /*<<< orphan*/  shost; int /*<<< orphan*/  pdev; int /*<<< orphan*/  vdev; } ;
typedef  enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;
struct TYPE_2__ {int requested; struct snic* devid; int /*<<< orphan*/  devname; int /*<<< orphan*/  isr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 size_t SNIC_MSIX_ERR_NOTIFY ; 
 size_t SNIC_MSIX_IO_CMPL ; 
 size_t SNIC_MSIX_WQ ; 
 int VNIC_DEV_INTR_MODE_MSIX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snic*) ; 
 int /*<<< orphan*/  FUNC5 (struct snic*) ; 
 int /*<<< orphan*/  snic_isr_msix_err_notify ; 
 int /*<<< orphan*/  snic_isr_msix_io_cmpl ; 
 int /*<<< orphan*/  snic_isr_msix_wq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct snic *snic)
{
	int ret = 0, i;
	enum vnic_dev_intr_mode intr_mode;

	intr_mode = FUNC7(snic->vdev);
	FUNC1(intr_mode != VNIC_DEV_INTR_MODE_MSIX);

	/*
	 * Currently HW supports single WQ and CQ. So passing devid as snic.
	 * When hardware supports multiple WQs and CQs, one idea is
	 * to pass devid as corresponding WQ or CQ ptr and retrieve snic
	 * from queue ptr.
	 * Except for err_notify, which is always one.
	 */
	FUNC6(snic->msix[SNIC_MSIX_WQ].devname,
		"%.11s-scsi-wq",
		snic->name);
	snic->msix[SNIC_MSIX_WQ].isr = snic_isr_msix_wq;
	snic->msix[SNIC_MSIX_WQ].devid = snic;

	FUNC6(snic->msix[SNIC_MSIX_IO_CMPL].devname,
		"%.11s-io-cmpl",
		snic->name);
	snic->msix[SNIC_MSIX_IO_CMPL].isr = snic_isr_msix_io_cmpl;
	snic->msix[SNIC_MSIX_IO_CMPL].devid = snic;

	FUNC6(snic->msix[SNIC_MSIX_ERR_NOTIFY].devname,
		"%.11s-err-notify",
		snic->name);
	snic->msix[SNIC_MSIX_ERR_NOTIFY].isr = snic_isr_msix_err_notify;
	snic->msix[SNIC_MSIX_ERR_NOTIFY].devid = snic;

	for (i = 0; i < FUNC0(snic->msix); i++) {
		ret = FUNC4(FUNC3(snic->pdev, i),
				  snic->msix[i].isr,
				  0,
				  snic->msix[i].devname,
				  snic->msix[i].devid);
		if (ret) {
			FUNC2(snic->shost,
				      "MSI-X: request_irq(%d) failed %d\n",
				      i,
				      ret);
			FUNC5(snic);
			break;
		}
		snic->msix[i].requested = 1;
	}

	return ret;
}