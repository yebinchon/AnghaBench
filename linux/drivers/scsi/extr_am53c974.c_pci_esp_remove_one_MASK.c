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
struct pci_esp_priv {struct esp* esp; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct esp {int /*<<< orphan*/  host; int /*<<< orphan*/  regs; int /*<<< orphan*/  command_block_dma; int /*<<< orphan*/  command_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct esp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_esp_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pci_esp_priv* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct esp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct pci_esp_priv *pep = FUNC4(pdev);
	struct esp *esp = pep->esp;

	FUNC8(esp);
	FUNC1(pdev->irq, esp);
	FUNC7(pdev, NULL);
	FUNC0(&pdev->dev, 16, esp->command_block,
			  esp->command_block_dma);
	FUNC5(pdev, esp->regs);
	FUNC6(pdev);
	FUNC3(pdev);
	FUNC2(pep);

	FUNC9(esp->host);
}