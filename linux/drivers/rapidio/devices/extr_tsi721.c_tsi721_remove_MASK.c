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
struct tsi721_device {int flags; int /*<<< orphan*/  pdev; scalar_t__ odb_base; scalar_t__ regs; int /*<<< orphan*/  mport; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT ; 
 int TSI721_USING_MSI ; 
 int TSI721_USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct tsi721_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC19(struct pci_dev *pdev)
{
	struct tsi721_device *priv = FUNC7(pdev);

	FUNC18(EXIT, &pdev->dev, "enter");

	FUNC13(priv);
	FUNC15(priv);
	FUNC0();
	FUNC10(&priv->mport);

	FUNC17(priv);
	FUNC11(priv);
	FUNC14(priv);
	FUNC16(priv);
	FUNC12(priv);

	if (priv->regs)
		FUNC1(priv->regs);
	if (priv->odb_base)
		FUNC1(priv->odb_base);
#ifdef CONFIG_PCI_MSI
	if (priv->flags & TSI721_USING_MSIX)
		pci_disable_msix(priv->pdev);
	else if (priv->flags & TSI721_USING_MSI)
		pci_disable_msi(priv->pdev);
#endif
	FUNC8(pdev);
	FUNC3(pdev);
	FUNC4(pdev);
	FUNC9(pdev, NULL);
	FUNC2(priv);
	FUNC18(EXIT, &pdev->dev, "exit");
}