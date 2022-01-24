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
struct uio_info {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_DISABLE ; 
 scalar_t__ INT_ENABLE_ADDR ; 
 scalar_t__ INT_MASK_ADDR ; 
 scalar_t__ MAILBOX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct uio_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct uio_info* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct uio_info*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct uio_info *info = FUNC6(pdev);

	/* disable interrupts */
	FUNC3(INT_DISABLE, info->priv + INT_MASK_ADDR);
	FUNC2(INT_DISABLE, info->priv + INT_ENABLE_ADDR);
	/* read mailbox to ensure board drops irq */
	FUNC0(info->priv + MAILBOX);

	FUNC8(info);
	FUNC7(pdev);
	FUNC5(pdev);
	FUNC1(info->priv);

	FUNC4(info);
}