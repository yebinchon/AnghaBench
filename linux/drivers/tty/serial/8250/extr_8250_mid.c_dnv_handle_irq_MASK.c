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
struct mid8250 {int /*<<< orphan*/  dma_chip; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  INTEL_MID_UART_FISR ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  UART_IIR ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*) ; 
 unsigned int FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static int FUNC8(struct uart_port *p)
{
	struct mid8250 *mid = p->private_data;
	struct uart_8250_port *up = FUNC7(p);
	unsigned int fisr = FUNC6(p, INTEL_MID_UART_FISR);
	u32 status;
	int ret = 0;
	int err;

	if (fisr & FUNC0(2)) {
		err = FUNC3(&mid->dma_chip, 1, &status);
		if (err > 0) {
			FUNC5(up);
			ret |= 1;
		} else if (err == 0)
			ret |= FUNC2(&mid->dma_chip, 1, status);
	}
	if (fisr & FUNC0(1)) {
		err = FUNC3(&mid->dma_chip, 0, &status);
		if (err > 0)
			ret |= 1;
		else if (err == 0)
			ret |= FUNC2(&mid->dma_chip, 0, status);
	}
	if (fisr & FUNC0(0))
		ret |= FUNC4(p, FUNC6(p, UART_IIR));
	return FUNC1(ret);
}