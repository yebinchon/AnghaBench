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
struct uart_port {int uartclk; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__* cons; int /*<<< orphan*/  dev; } ;
struct uart_8250_port {int lcr; TYPE_2__ port; int /*<<< orphan*/ * dma; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_3__ {int cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (int,int) ; 
 int MTK_UART_FC_HW ; 
 int MTK_UART_FC_NONE ; 
 int MTK_UART_FC_SW ; 
 int /*<<< orphan*/  MTK_UART_FRACDIV_L ; 
 int /*<<< orphan*/  MTK_UART_FRACDIV_M ; 
 int /*<<< orphan*/  MTK_UART_HIGHS ; 
 int /*<<< orphan*/  MTK_UART_SAMPLE_COUNT ; 
 int /*<<< orphan*/  MTK_UART_SAMPLE_POINT ; 
 int UART_DIV_MAX ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_DLAB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC11 (struct ktermios*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC12 (struct uart_port*) ; 
 unsigned int FUNC13 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 unsigned int FUNC14 (struct uart_port*,unsigned int) ; 
 struct uart_8250_port* FUNC15 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC16(struct uart_port *port, struct ktermios *termios,
			struct ktermios *old)
{
	unsigned short fraction_L_mapping[] = {
		0, 1, 0x5, 0x15, 0x55, 0x57, 0x57, 0x77, 0x7F, 0xFF, 0xFF
	};
	unsigned short fraction_M_mapping[] = {
		0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 3
	};
	struct uart_8250_port *up = FUNC15(port);
	unsigned int baud, quot, fraction;
	unsigned long flags;
	int mode;

#ifdef CONFIG_SERIAL_8250_DMA
	if (up->dma) {
		if (uart_console(port)) {
			devm_kfree(up->port.dev, up->dma);
			up->dma = NULL;
		} else {
			mtk8250_dma_enable(up);
		}
	}
#endif

	FUNC5(port, termios, old);

	/*
	 * Mediatek UARTs use an extra highspeed register (MTK_UART_HIGHS)
	 *
	 * We need to recalcualte the quot register, as the claculation depends
	 * on the vaule in the highspeed register.
	 *
	 * Some baudrates are not supported by the chip, so we use the next
	 * lower rate supported and update termios c_flag.
	 *
	 * If highspeed register is set to 3, we need to specify sample count
	 * and sample point to increase accuracy. If not, we reset the
	 * registers to their default values.
	 */
	baud = FUNC13(port, termios, old,
				  port->uartclk / 16 / UART_DIV_MAX,
				  port->uartclk);

	if (baud < 115200) {
		FUNC7(port, MTK_UART_HIGHS, 0x0);
		quot = FUNC14(port, baud);
	} else {
		FUNC7(port, MTK_UART_HIGHS, 0x3);
		quot = FUNC1(port->uartclk, 256 * baud);
	}

	/*
	 * Ok, we're now changing the port state.  Do it with
	 * interrupts disabled.
	 */
	FUNC8(&port->lock, flags);

	/* set DLAB we have cval saved in up->lcr from the call to the core */
	FUNC7(port, UART_LCR, up->lcr | UART_LCR_DLAB);
	FUNC6(up, quot);

	/* reset DLAB */
	FUNC7(port, UART_LCR, up->lcr);

	if (baud >= 115200) {
		unsigned int tmp;

		tmp = (port->uartclk / (baud *  quot)) - 1;
		FUNC7(port, MTK_UART_SAMPLE_COUNT, tmp);
		FUNC7(port, MTK_UART_SAMPLE_POINT,
					(tmp >> 1) - 1);

		/*count fraction to set fractoin register */
		fraction = ((port->uartclk  * 100) / baud / quot) % 100;
		fraction = FUNC0(fraction, 10);
		FUNC7(port, MTK_UART_FRACDIV_L,
						fraction_L_mapping[fraction]);
		FUNC7(port, MTK_UART_FRACDIV_M,
						fraction_M_mapping[fraction]);
	} else {
		FUNC7(port, MTK_UART_SAMPLE_COUNT, 0x00);
		FUNC7(port, MTK_UART_SAMPLE_POINT, 0xff);
		FUNC7(port, MTK_UART_FRACDIV_L, 0x00);
		FUNC7(port, MTK_UART_FRACDIV_M, 0x00);
	}

	if ((termios->c_cflag & CRTSCTS) && (!(termios->c_iflag & CRTSCTS)))
		mode = MTK_UART_FC_HW;
	else if (termios->c_iflag & CRTSCTS)
		mode = MTK_UART_FC_SW;
	else
		mode = MTK_UART_FC_NONE;

	FUNC4(up, mode);

	if (FUNC12(port))
		up->port.cons->cflag = termios->c_cflag;

	FUNC9(&port->lock, flags);
	/* Don't rewrite B0 */
	if (FUNC10(termios))
		FUNC11(termios, baud, baud);
}