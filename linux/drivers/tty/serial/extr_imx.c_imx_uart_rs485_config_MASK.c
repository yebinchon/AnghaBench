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
struct serial_rs485 {int flags; scalar_t__ delay_rts_after_send; scalar_t__ delay_rts_before_send; } ;
struct uart_port {struct serial_rs485 rs485; } ;
struct imx_port {int /*<<< orphan*/  have_rtsgpio; scalar_t__ have_rtscts; } ;

/* Variables and functions */
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_AFTER_SEND ; 
 int SER_RS485_RTS_ON_SEND ; 
 int SER_RS485_RX_DURING_TX ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port,
				 struct serial_rs485 *rs485conf)
{
	struct imx_port *sport = (struct imx_port *)port;
	u32 ucr2;

	/* unimplemented */
	rs485conf->delay_rts_before_send = 0;
	rs485conf->delay_rts_after_send = 0;

	/* RTS is required to control the transmitter */
	if (!sport->have_rtscts && !sport->have_rtsgpio)
		rs485conf->flags &= ~SER_RS485_ENABLED;

	if (rs485conf->flags & SER_RS485_ENABLED) {
		/* Enable receiver if low-active RTS signal is requested */
		if (sport->have_rtscts &&  !sport->have_rtsgpio &&
		    !(rs485conf->flags & SER_RS485_RTS_ON_SEND))
			rs485conf->flags |= SER_RS485_RX_DURING_TX;

		/* disable transmitter */
		ucr2 = FUNC0(sport, UCR2);
		if (rs485conf->flags & SER_RS485_RTS_AFTER_SEND)
			FUNC1(sport, &ucr2);
		else
			FUNC2(sport, &ucr2);
		FUNC4(sport, ucr2, UCR2);
	}

	/* Make sure Rx is enabled in case Tx is active with Rx disabled */
	if (!(rs485conf->flags & SER_RS485_ENABLED) ||
	    rs485conf->flags & SER_RS485_RX_DURING_TX)
		FUNC3(port);

	port->rs485 = *rs485conf;

	return 0;
}