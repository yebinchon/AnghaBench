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
struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int /*<<< orphan*/  host; int /*<<< orphan*/  hdw_dma_regs; scalar_t__ reset_work_q; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ipr_ioa_cfg *ioa_cfg)
{
	struct pci_dev *pdev = ioa_cfg->pdev;

	ENTER;
	FUNC2(ioa_cfg);
	if (ioa_cfg->reset_work_q)
		FUNC0(ioa_cfg->reset_work_q);
	FUNC1(ioa_cfg->hdw_dma_regs);
	FUNC5(pdev);
	FUNC3(ioa_cfg);
	FUNC6(ioa_cfg->host);
	FUNC4(pdev);
	LEAVE;
}