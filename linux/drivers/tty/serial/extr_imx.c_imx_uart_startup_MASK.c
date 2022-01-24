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
typedef  int u32 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct imx_port {TYPE_1__ port; scalar_t__ dte_mode; scalar_t__ have_rtscts; int /*<<< orphan*/  dma_is_enabled; int /*<<< orphan*/  clk_per; int /*<<< orphan*/  clk_ipg; } ;

/* Variables and functions */
 int CTSTL ; 
 int /*<<< orphan*/  RXTL_DEFAULT ; 
 int /*<<< orphan*/  TXTL_DEFAULT ; 
 int /*<<< orphan*/  UCR1 ; 
 int UCR1_RRDYEN ; 
 int UCR1_RTSDEN ; 
 int UCR1_UARTEN ; 
 int /*<<< orphan*/  UCR2 ; 
 int UCR2_ATEN ; 
 int UCR2_IRTS ; 
 int UCR2_RTSEN ; 
 int UCR2_RXEN ; 
 int UCR2_SRST ; 
 int UCR2_TXEN ; 
 int /*<<< orphan*/  UCR3 ; 
 int UCR3_DCD ; 
 int UCR3_DTRDEN ; 
 int UCR3_RI ; 
 int /*<<< orphan*/  UCR4 ; 
 int UCR4_CTSTL_MASK ; 
 int UCR4_CTSTL_SHF ; 
 int UCR4_DREN ; 
 int UCR4_OREN ; 
 int /*<<< orphan*/  USR1 ; 
 int USR1_DTRD ; 
 int USR1_RTSD ; 
 int /*<<< orphan*/  USR2 ; 
 int USR2_ORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_port*) ; 
 int FUNC6 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct imx_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct imx_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	int retval, i;
	unsigned long flags;
	int dma_is_inited = 0;
	u32 ucr1, ucr2, ucr4;

	retval = FUNC1(sport->clk_per);
	if (retval)
		return retval;
	retval = FUNC1(sport->clk_ipg);
	if (retval) {
		FUNC0(sport->clk_per);
		return retval;
	}

	FUNC7(sport, TXTL_DEFAULT, RXTL_DEFAULT);

	/* disable the DREN bit (Data Ready interrupt enable) before
	 * requesting IRQs
	 */
	ucr4 = FUNC6(sport, UCR4);

	/* set the trigger level for CTS */
	ucr4 &= ~(UCR4_CTSTL_MASK << UCR4_CTSTL_SHF);
	ucr4 |= CTSTL << UCR4_CTSTL_SHF;

	FUNC9(sport, ucr4 & ~UCR4_DREN, UCR4);

	/* Can we enable the DMA support? */
	if (!FUNC12(port) && FUNC2(sport) == 0)
		dma_is_inited = 1;

	FUNC10(&sport->port.lock, flags);
	/* Reset fifo's and state machines */
	i = 100;

	ucr2 = FUNC6(sport, UCR2);
	ucr2 &= ~UCR2_SRST;
	FUNC9(sport, ucr2, UCR2);

	while (!(FUNC6(sport, UCR2) & UCR2_SRST) && (--i > 0))
		FUNC13(1);

	/*
	 * Finally, clear and enable interrupts
	 */
	FUNC9(sport, USR1_RTSD | USR1_DTRD, USR1);
	FUNC9(sport, USR2_ORE, USR2);

	ucr1 = FUNC6(sport, UCR1) & ~UCR1_RRDYEN;
	ucr1 |= UCR1_UARTEN;
	if (sport->have_rtscts)
		ucr1 |= UCR1_RTSDEN;

	FUNC9(sport, ucr1, UCR1);

	ucr4 = FUNC6(sport, UCR4) & ~UCR4_OREN;
	if (!sport->dma_is_enabled)
		ucr4 |= UCR4_OREN;
	FUNC9(sport, ucr4, UCR4);

	ucr2 = FUNC6(sport, UCR2) & ~UCR2_ATEN;
	ucr2 |= (UCR2_RXEN | UCR2_TXEN);
	if (!sport->have_rtscts)
		ucr2 |= UCR2_IRTS;
	/*
	 * make sure the edge sensitive RTS-irq is disabled,
	 * we're using RTSD instead.
	 */
	if (!FUNC5(sport))
		ucr2 &= ~UCR2_RTSEN;
	FUNC9(sport, ucr2, UCR2);

	if (!FUNC5(sport)) {
		u32 ucr3;

		ucr3 = FUNC6(sport, UCR3);

		ucr3 |= UCR3_DTRDEN | UCR3_RI | UCR3_DCD;

		if (sport->dte_mode)
			/* disable broken interrupts */
			ucr3 &= ~(UCR3_RI | UCR3_DCD);

		FUNC9(sport, ucr3, UCR3);
	}

	/*
	 * Enable modem status interrupts
	 */
	FUNC4(&sport->port);

	if (dma_is_inited) {
		FUNC3(sport);
		FUNC8(sport);
	} else {
		ucr1 = FUNC6(sport, UCR1);
		ucr1 |= UCR1_RRDYEN;
		FUNC9(sport, ucr1, UCR1);

		ucr2 = FUNC6(sport, UCR2);
		ucr2 |= UCR2_ATEN;
		FUNC9(sport, ucr2, UCR2);
	}

	FUNC11(&sport->port.lock, flags);

	return 0;
}