#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fnic {char* name; TYPE_2__* msix; TYPE_1__* lport; int /*<<< orphan*/  pdev; int /*<<< orphan*/  vdev; } ;
struct TYPE_4__ {char* devname; int requested; struct fnic* devid; int /*<<< orphan*/ * isr; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 char* DRV_NAME ; 
 size_t FNIC_MSIX_ERR_NOTIFY ; 
 size_t FNIC_MSIX_RQ ; 
 size_t FNIC_MSIX_WQ ; 
 size_t FNIC_MSIX_WQ_COPY ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_ERR ; 
#define  VNIC_DEV_INTR_MODE_INTX 130 
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  FUNC1 (struct fnic*) ; 
 int /*<<< orphan*/  fnic_isr_legacy ; 
 int /*<<< orphan*/  fnic_isr_msi ; 
 int /*<<< orphan*/ * fnic_isr_msix_err_notify ; 
 int /*<<< orphan*/ * fnic_isr_msix_rq ; 
 int /*<<< orphan*/ * fnic_isr_msix_wq ; 
 int /*<<< orphan*/ * fnic_isr_msix_wq_copy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct fnic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct fnic *fnic)
{
	int err = 0;
	int i;

	switch (FUNC6(fnic->vdev)) {

	case VNIC_DEV_INTR_MODE_INTX:
		err = FUNC3(FUNC2(fnic->pdev, 0),
				&fnic_isr_legacy, IRQF_SHARED, DRV_NAME, fnic);
		break;

	case VNIC_DEV_INTR_MODE_MSI:
		err = FUNC3(FUNC2(fnic->pdev, 0), &fnic_isr_msi,
				  0, fnic->name, fnic);
		break;

	case VNIC_DEV_INTR_MODE_MSIX:

		FUNC5(fnic->msix[FNIC_MSIX_RQ].devname,
			"%.11s-fcs-rq", fnic->name);
		fnic->msix[FNIC_MSIX_RQ].isr = fnic_isr_msix_rq;
		fnic->msix[FNIC_MSIX_RQ].devid = fnic;

		FUNC5(fnic->msix[FNIC_MSIX_WQ].devname,
			"%.11s-fcs-wq", fnic->name);
		fnic->msix[FNIC_MSIX_WQ].isr = fnic_isr_msix_wq;
		fnic->msix[FNIC_MSIX_WQ].devid = fnic;

		FUNC5(fnic->msix[FNIC_MSIX_WQ_COPY].devname,
			"%.11s-scsi-wq", fnic->name);
		fnic->msix[FNIC_MSIX_WQ_COPY].isr = fnic_isr_msix_wq_copy;
		fnic->msix[FNIC_MSIX_WQ_COPY].devid = fnic;

		FUNC5(fnic->msix[FNIC_MSIX_ERR_NOTIFY].devname,
			"%.11s-err-notify", fnic->name);
		fnic->msix[FNIC_MSIX_ERR_NOTIFY].isr =
			fnic_isr_msix_err_notify;
		fnic->msix[FNIC_MSIX_ERR_NOTIFY].devid = fnic;

		for (i = 0; i < FUNC0(fnic->msix); i++) {
			err = FUNC3(FUNC2(fnic->pdev, i),
					  fnic->msix[i].isr, 0,
					  fnic->msix[i].devname,
					  fnic->msix[i].devid);
			if (err) {
				FUNC4(KERN_ERR, fnic->lport->host,
					     "MSIX: request_irq"
					     " failed %d\n", err);
				FUNC1(fnic);
				break;
			}
			fnic->msix[i].requested = 1;
		}
		break;

	default:
		break;
	}

	return err;
}