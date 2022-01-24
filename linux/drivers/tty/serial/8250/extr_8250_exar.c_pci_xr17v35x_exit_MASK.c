#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct platform_device* private_data; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct platform_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct exar8250 {int /*<<< orphan*/ * line; } ;

/* Variables and functions */
 struct exar8250* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 struct uart_8250_port* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pcidev)
{
	struct exar8250 *priv = FUNC0(pcidev);
	struct uart_8250_port *port = FUNC2(priv->line[0]);
	struct platform_device *pdev = port->port.private_data;

	FUNC1(pdev);
	port->port.private_data = NULL;
}