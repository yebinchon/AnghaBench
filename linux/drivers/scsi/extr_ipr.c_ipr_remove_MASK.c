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
struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {TYPE_2__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ shost_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  ipr_dump_attr ; 
 int /*<<< orphan*/  ipr_ioa_async_err_log ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipr_trace_attr ; 
 struct ipr_ioa_cfg* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct ipr_ioa_cfg *ioa_cfg = FUNC3(pdev);

	ENTER;

	FUNC2(&ioa_cfg->host->shost_dev.kobj,
			      &ipr_trace_attr);
	FUNC1(&ioa_cfg->host->shost_dev.kobj,
			     &ipr_dump_attr);
	FUNC5(&ioa_cfg->host->shost_dev.kobj,
			&ipr_ioa_async_err_log);
	FUNC4(ioa_cfg->host);

	FUNC0(pdev);

	LEAVE;
}