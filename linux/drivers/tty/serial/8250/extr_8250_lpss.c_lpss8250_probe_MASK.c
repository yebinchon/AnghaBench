#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int regshift; int uartclk; int flags; int /*<<< orphan*/  membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; TYPE_1__* private_data; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; } ;
struct uart_8250_port {int capabilities; TYPE_2__ port; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct lpss8250_board {int base_baud; int (* setup ) (struct lpss8250*,TYPE_2__*) ;int /*<<< orphan*/  (* exit ) (struct lpss8250*) ;} ;
struct TYPE_4__ {int line; } ;
struct lpss8250 {struct lpss8250_board* board; TYPE_1__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PORT_16550A ; 
 int UART_CAP_AFE ; 
 int UART_CAP_FIFO ; 
 int UPF_FIXED_PORT ; 
 int UPF_FIXED_TYPE ; 
 int UPF_SHARE_IRQ ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 struct lpss8250* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct lpss8250*,struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct lpss8250*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct uart_8250_port*) ; 
 int FUNC9 (struct lpss8250*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpss8250*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct uart_8250_port uart;
	struct lpss8250 *lpss;
	int ret;

	ret = FUNC6(pdev);
	if (ret)
		return ret;

	lpss = FUNC0(&pdev->dev, sizeof(*lpss), GFP_KERNEL);
	if (!lpss)
		return -ENOMEM;

	lpss->board = (struct lpss8250_board *)id->driver_data;

	FUNC3(&uart, 0, sizeof(struct uart_8250_port));

	uart.port.dev = &pdev->dev;
	uart.port.irq = pdev->irq;
	uart.port.private_data = &lpss->data;
	uart.port.type = PORT_16550A;
	uart.port.iotype = UPIO_MEM;
	uart.port.regshift = 2;
	uart.port.uartclk = lpss->board->base_baud * 16;
	uart.port.flags = UPF_SHARE_IRQ | UPF_FIXED_PORT | UPF_FIXED_TYPE;
	uart.capabilities = UART_CAP_FIFO | UART_CAP_AFE;
	uart.port.mapbase = FUNC4(pdev, 0);
	uart.port.membase = FUNC7(pdev, 0, 0);
	if (!uart.port.membase)
		return -ENOMEM;

	ret = lpss->board->setup(lpss, &uart.port);
	if (ret)
		return ret;

	FUNC1(&uart.port);

	ret = FUNC2(lpss, &uart);
	if (ret)
		goto err_exit;

	ret = FUNC8(&uart);
	if (ret < 0)
		goto err_exit;

	lpss->data.line = ret;

	FUNC5(pdev, lpss);
	return 0;

err_exit:
	if (lpss->board->exit)
		lpss->board->exit(lpss);
	return ret;
}