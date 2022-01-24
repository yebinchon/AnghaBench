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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
struct lpss8250 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_IRQ_ALL_TYPES ; 
 int FUNC0 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpss8250*,struct uart_port*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct lpss8250 *lpss, struct uart_port *port)
{
	struct pci_dev *pdev = FUNC4(port->dev);
	int ret;

	FUNC2(pdev);

	ret = FUNC0(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
	if (ret < 0)
		return ret;

	port->irq = FUNC1(pdev, 0);

	FUNC3(lpss, port);
	return 0;
}