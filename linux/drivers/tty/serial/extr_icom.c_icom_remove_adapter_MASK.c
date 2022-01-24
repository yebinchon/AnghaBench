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
struct icom_port {scalar_t__ status; TYPE_1__* dram; int /*<<< orphan*/  uart_port; } ;
struct icom_adapter {int numb_ports; TYPE_2__* pci_dev; int /*<<< orphan*/  base_addr; struct icom_port* port_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  osr; } ;

/* Variables and functions */
 scalar_t__ ICOM_PORT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct icom_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct icom_adapter*) ; 
 int /*<<< orphan*/  icom_uart_driver ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct icom_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct icom_adapter *icom_adapter)
{
	struct icom_port *icom_port;
	int index;

	for (index = 0; index < icom_adapter->numb_ports; index++) {
		icom_port = &icom_adapter->port_info[index];

		if (icom_port->status == ICOM_PORT_ACTIVE) {
			FUNC0(&icom_adapter->pci_dev->dev,
				 "Device removed\n");

			FUNC8(&icom_uart_driver,
					     &icom_port->uart_port);

			/* be sure that DTR and RTS are dropped */
			FUNC9(0x00, &icom_port->dram->osr);

			/* Wait 0.1 Sec for simple Init to complete */
			FUNC5(100);

			/* Stop proccessor */
			FUNC7(icom_port);

			FUNC2(icom_port);
		}
	}

	FUNC1(icom_adapter->pci_dev->irq, (void *) icom_adapter);
	FUNC4(icom_adapter->base_addr);
	FUNC6(icom_adapter->pci_dev);
	FUNC3(icom_adapter);
}