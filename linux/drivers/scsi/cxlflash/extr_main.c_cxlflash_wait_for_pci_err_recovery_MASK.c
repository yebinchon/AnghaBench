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
struct cxlflash_cfg {int /*<<< orphan*/  reset_waitq; struct pci_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXLFLASH_PCI_ERROR_RECOVERY_TIMEOUT ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cxlflash_cfg *cfg)
{
	struct pci_dev *pdev = cfg->dev;

	if (FUNC0(pdev))
		FUNC1(cfg->reset_waitq,
				   !FUNC0(pdev),
				   CXLFLASH_PCI_ERROR_RECOVERY_TIMEOUT);
}