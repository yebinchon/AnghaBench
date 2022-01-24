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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  sense_interrupt_reg; int /*<<< orphan*/  sense_interrupt_reg32; int /*<<< orphan*/  sense_interrupt_mask_reg; int /*<<< orphan*/  clr_interrupt_mask_reg32; } ;
struct ipr_ioa_cfg {TYPE_2__* host; scalar_t__ msi_received; int /*<<< orphan*/  msi_wait_q; TYPE_1__ regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  IPR_NAME ; 
 int /*<<< orphan*/  IPR_PCII_IOA_TRANS_TO_OPER ; 
 int /*<<< orphan*/  IPR_PCII_IO_DEBUG_ACKNOWLEDGE ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ ipr_debug ; 
 int /*<<< orphan*/  FUNC4 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_test_intr ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ipr_ioa_cfg *ioa_cfg, struct pci_dev *pdev)
{
	int rc;
	volatile u32 int_reg;
	unsigned long lock_flags = 0;
	int irq = FUNC5(pdev, 0);

	ENTER;

	FUNC8(ioa_cfg->host->host_lock, lock_flags);
	FUNC3(&ioa_cfg->msi_wait_q);
	ioa_cfg->msi_received = 0;
	FUNC4(ioa_cfg, ~IPR_PCII_IOA_TRANS_TO_OPER);
	FUNC11(IPR_PCII_IO_DEBUG_ACKNOWLEDGE, ioa_cfg->regs.clr_interrupt_mask_reg32);
	int_reg = FUNC6(ioa_cfg->regs.sense_interrupt_mask_reg);
	FUNC9(ioa_cfg->host->host_lock, lock_flags);

	rc = FUNC7(irq, ipr_test_intr, 0, IPR_NAME, ioa_cfg);
	if (rc) {
		FUNC0(&pdev->dev, "Can not assign irq %d\n", irq);
		return rc;
	} else if (ipr_debug)
		FUNC1(&pdev->dev, "IRQ assigned: %d\n", irq);

	FUNC11(IPR_PCII_IO_DEBUG_ACKNOWLEDGE, ioa_cfg->regs.sense_interrupt_reg32);
	int_reg = FUNC6(ioa_cfg->regs.sense_interrupt_reg);
	FUNC10(ioa_cfg->msi_wait_q, ioa_cfg->msi_received, HZ);
	FUNC8(ioa_cfg->host->host_lock, lock_flags);
	FUNC4(ioa_cfg, ~IPR_PCII_IOA_TRANS_TO_OPER);

	if (!ioa_cfg->msi_received) {
		/* MSI test failed */
		FUNC1(&pdev->dev, "MSI test failed.  Falling back to LSI.\n");
		rc = -EOPNOTSUPP;
	} else if (ipr_debug)
		FUNC1(&pdev->dev, "MSI test succeeded.\n");

	FUNC9(ioa_cfg->host->host_lock, lock_flags);

	FUNC2(irq, ioa_cfg);

	LEAVE;

	return rc;
}