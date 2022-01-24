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
struct imx_port {int /*<<< orphan*/  gpios; } ;

/* Variables and functions */
 int SER_RS485_ENABLED ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  UCR2 ; 
 int UCR2_CTS ; 
 int UCR2_CTSC ; 
 int UCR2_IRTS ; 
 int /*<<< orphan*/  UCR3 ; 
 int UCR3_DSR ; 
 int UTS_LOOP ; 
 int FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, unsigned int mctrl)
{
	struct imx_port *sport = (struct imx_port *)port;
	u32 ucr3, uts;

	if (!(port->rs485.flags & SER_RS485_ENABLED)) {
		u32 ucr2;

		/*
		 * Turn off autoRTS if RTS is lowered and restore autoRTS
		 * setting if RTS is raised.
		 */
		ucr2 = FUNC0(sport, UCR2);
		ucr2 &= ~(UCR2_CTS | UCR2_CTSC);
		if (mctrl & TIOCM_RTS) {
			ucr2 |= UCR2_CTS;
			/*
			 * UCR2_IRTS is unset if and only if the port is
			 * configured for CRTSCTS, so we use inverted UCR2_IRTS
			 * to get the state to restore to.
			 */
			if (!(ucr2 & UCR2_IRTS))
				ucr2 |= UCR2_CTSC;
		}
		FUNC2(sport, ucr2, UCR2);
	}

	ucr3 = FUNC0(sport, UCR3) & ~UCR3_DSR;
	if (!(mctrl & TIOCM_DTR))
		ucr3 |= UCR3_DSR;
	FUNC2(sport, ucr3, UCR3);

	uts = FUNC0(sport, FUNC1(sport)) & ~UTS_LOOP;
	if (mctrl & TIOCM_LOOP)
		uts |= UTS_LOOP;
	FUNC2(sport, uts, FUNC1(sport));

	FUNC3(sport->gpios, mctrl);
}