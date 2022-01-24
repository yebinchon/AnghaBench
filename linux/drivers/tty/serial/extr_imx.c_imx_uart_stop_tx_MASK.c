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
struct TYPE_2__ {int flags; } ;
struct uart_port {TYPE_1__ rs485; } ;
struct imx_port {scalar_t__ dma_is_txing; } ;

/* Variables and functions */
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_AFTER_SEND ; 
 int /*<<< orphan*/  UCR1 ; 
 int UCR1_TRDYEN ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  UCR4 ; 
 int UCR4_TCEN ; 
 int /*<<< orphan*/  USR2 ; 
 int USR2_TXDC ; 
 int FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_port*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	u32 ucr1;

	/*
	 * We are maybe in the SMP context, so if the DMA TX thread is running
	 * on other cpu, we have to wait for it to finish.
	 */
	if (sport->dma_is_txing)
		return;

	ucr1 = FUNC0(sport, UCR1);
	FUNC4(sport, ucr1 & ~UCR1_TRDYEN, UCR1);

	/* in rs485 mode disable transmitter if shifter is empty */
	if (port->rs485.flags & SER_RS485_ENABLED &&
	    FUNC0(sport, USR2) & USR2_TXDC) {
		u32 ucr2 = FUNC0(sport, UCR2), ucr4;
		if (port->rs485.flags & SER_RS485_RTS_AFTER_SEND)
			FUNC1(sport, &ucr2);
		else
			FUNC2(sport, &ucr2);
		FUNC4(sport, ucr2, UCR2);

		FUNC3(port);

		ucr4 = FUNC0(sport, UCR4);
		ucr4 &= ~UCR4_TCEN;
		FUNC4(sport, ucr4, UCR4);
	}
}