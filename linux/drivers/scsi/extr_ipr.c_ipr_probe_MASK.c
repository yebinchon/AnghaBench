#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ipr_ioa_cfg {int scan_enabled; int nvectors; int hrrq_num; TYPE_4__* host; scalar_t__ iopoll_weight; TYPE_3__* hrrq; scalar_t__ sis64; TYPE_2__* chip_cfg; int /*<<< orphan*/  work_q; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_10__ {int /*<<< orphan*/  host_lock; TYPE_1__ shost_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  iopoll; } ;
struct TYPE_8__ {scalar_t__ iopoll_weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipr_dump_attr ; 
 int /*<<< orphan*/  ipr_ioa_async_err_log ; 
 int /*<<< orphan*/  ipr_iopoll ; 
 int FUNC3 (struct pci_dev*,struct pci_device_id const*) ; 
 int FUNC4 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipr_trace_attr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ipr_ioa_cfg* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *dev_id)
{
	struct ipr_ioa_cfg *ioa_cfg;
	unsigned long flags;
	int rc, i;

	rc = FUNC3(pdev, dev_id);

	if (rc)
		return rc;

	ioa_cfg = FUNC8(pdev);
	rc = FUNC4(ioa_cfg);

	if (rc) {
		FUNC0(pdev);
		return rc;
	}

	rc = FUNC10(ioa_cfg->host, &pdev->dev);

	if (rc) {
		FUNC0(pdev);
		return rc;
	}

	rc = FUNC2(&ioa_cfg->host->shost_dev.kobj,
				   &ipr_trace_attr);

	if (rc) {
		FUNC11(ioa_cfg->host);
		FUNC0(pdev);
		return rc;
	}

	rc = FUNC15(&ioa_cfg->host->shost_dev.kobj,
			&ipr_ioa_async_err_log);

	if (rc) {
		FUNC5(&ioa_cfg->host->shost_dev.kobj,
				&ipr_dump_attr);
		FUNC6(&ioa_cfg->host->shost_dev.kobj,
				&ipr_trace_attr);
		FUNC11(ioa_cfg->host);
		FUNC0(pdev);
		return rc;
	}

	rc = FUNC1(&ioa_cfg->host->shost_dev.kobj,
				   &ipr_dump_attr);

	if (rc) {
		FUNC16(&ioa_cfg->host->shost_dev.kobj,
				      &ipr_ioa_async_err_log);
		FUNC6(&ioa_cfg->host->shost_dev.kobj,
				      &ipr_trace_attr);
		FUNC11(ioa_cfg->host);
		FUNC0(pdev);
		return rc;
	}
	FUNC13(ioa_cfg->host->host_lock, flags);
	ioa_cfg->scan_enabled = 1;
	FUNC9(&ioa_cfg->work_q);
	FUNC14(ioa_cfg->host->host_lock, flags);

	ioa_cfg->iopoll_weight = ioa_cfg->chip_cfg->iopoll_weight;

	if (ioa_cfg->iopoll_weight && ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
		for (i = 1; i < ioa_cfg->hrrq_num; i++) {
			FUNC7(&ioa_cfg->hrrq[i].iopoll,
					ioa_cfg->iopoll_weight, ipr_iopoll);
		}
	}

	FUNC12(ioa_cfg->host);

	return 0;
}