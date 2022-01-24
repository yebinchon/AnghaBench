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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {struct mid8250* private_data; } ;
struct uart_8250_port {int dummy; } ;
struct mid8250 {int dma_index; int /*<<< orphan*/  dma_dev; } ;
struct hsu_dma_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  UART_IIR ; 
 int FUNC1 (struct hsu_dma_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hsu_dma_chip*,int,int /*<<< orphan*/ *) ; 
 struct hsu_dma_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static int FUNC8(struct uart_port *p)
{
	struct mid8250 *mid = p->private_data;
	struct uart_8250_port *up = FUNC7(p);
	struct hsu_dma_chip *chip;
	u32 status;
	int ret = 0;
	int err;

	chip = FUNC3(mid->dma_dev);

	/* Rx DMA */
	err = FUNC2(chip, mid->dma_index * 2 + 1, &status);
	if (err > 0) {
		FUNC5(up);
		ret |= 1;
	} else if (err == 0)
		ret |= FUNC1(chip, mid->dma_index * 2 + 1, status);

	/* Tx DMA */
	err = FUNC2(chip, mid->dma_index * 2, &status);
	if (err > 0)
		ret |= 1;
	else if (err == 0)
		ret |= FUNC1(chip, mid->dma_index * 2, status);

	/* UART */
	ret |= FUNC4(p, FUNC6(p, UART_IIR));
	return FUNC0(ret);
}