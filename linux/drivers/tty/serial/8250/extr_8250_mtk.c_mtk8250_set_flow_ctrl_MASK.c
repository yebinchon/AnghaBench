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
struct uart_port {TYPE_2__* state; } ;
struct uart_8250_port {struct uart_port port; } ;
struct TYPE_3__ {int /*<<< orphan*/  tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 int MTK_UART_EFR_HW_FC ; 
 int MTK_UART_EFR_SW_FC_MASK ; 
 int MTK_UART_EFR_XON1_XOFF1 ; 
 int MTK_UART_ESCAPE_CHAR ; 
 int /*<<< orphan*/  MTK_UART_ESCAPE_DAT ; 
 int /*<<< orphan*/  MTK_UART_ESCAPE_EN ; 
#define  MTK_UART_FC_HW 130 
#define  MTK_UART_FC_NONE 129 
#define  MTK_UART_FC_SW 128 
 int MTK_UART_IER_CTSI ; 
 int MTK_UART_IER_RTSI ; 
 int MTK_UART_IER_XOFFI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_EFR ; 
 int UART_EFR_ECB ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  UART_MCR ; 
 int UART_MCR_RTS ; 
 int /*<<< orphan*/  UART_XOFF1 ; 
 int /*<<< orphan*/  UART_XON1 ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,int) ; 
 int FUNC4 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct uart_8250_port *up, int mode)
{
	struct uart_port *port = &up->port;
	int lcr = FUNC4(up, UART_LCR);

	FUNC5(up, UART_LCR, UART_LCR_CONF_MODE_B);
	FUNC5(up, UART_EFR, UART_EFR_ECB);
	FUNC5(up, UART_LCR, lcr);
	lcr = FUNC4(up, UART_LCR);

	switch (mode) {
	case MTK_UART_FC_NONE:
		FUNC5(up, MTK_UART_ESCAPE_DAT, MTK_UART_ESCAPE_CHAR);
		FUNC5(up, MTK_UART_ESCAPE_EN, 0x00);
		FUNC5(up, UART_LCR, UART_LCR_CONF_MODE_B);
		FUNC5(up, UART_EFR, FUNC4(up, UART_EFR) &
			(~(MTK_UART_EFR_HW_FC | MTK_UART_EFR_SW_FC_MASK)));
		FUNC5(up, UART_LCR, lcr);
		FUNC2(up, MTK_UART_IER_XOFFI |
			MTK_UART_IER_RTSI | MTK_UART_IER_CTSI);
		break;

	case MTK_UART_FC_HW:
		FUNC5(up, MTK_UART_ESCAPE_DAT, MTK_UART_ESCAPE_CHAR);
		FUNC5(up, MTK_UART_ESCAPE_EN, 0x00);
		FUNC5(up, UART_MCR, UART_MCR_RTS);
		FUNC5(up, UART_LCR, UART_LCR_CONF_MODE_B);

		/*enable hw flow control*/
		FUNC5(up, UART_EFR, MTK_UART_EFR_HW_FC |
			(FUNC4(up, UART_EFR) &
			(~(MTK_UART_EFR_HW_FC | MTK_UART_EFR_SW_FC_MASK))));

		FUNC5(up, UART_LCR, lcr);
		FUNC2(up, MTK_UART_IER_XOFFI);
		FUNC3(up, MTK_UART_IER_CTSI | MTK_UART_IER_RTSI);
		break;

	case MTK_UART_FC_SW:	/*MTK software flow control */
		FUNC5(up, MTK_UART_ESCAPE_DAT, MTK_UART_ESCAPE_CHAR);
		FUNC5(up, MTK_UART_ESCAPE_EN, 0x01);
		FUNC5(up, UART_LCR, UART_LCR_CONF_MODE_B);

		/*enable sw flow control */
		FUNC5(up, UART_EFR, MTK_UART_EFR_XON1_XOFF1 |
			(FUNC4(up, UART_EFR) &
			(~(MTK_UART_EFR_HW_FC | MTK_UART_EFR_SW_FC_MASK))));

		FUNC5(up, UART_XON1, FUNC0(port->state->port.tty));
		FUNC5(up, UART_XOFF1, FUNC1(port->state->port.tty));
		FUNC5(up, UART_LCR, lcr);
		FUNC2(up, MTK_UART_IER_CTSI|MTK_UART_IER_RTSI);
		FUNC3(up, MTK_UART_IER_XOFFI);
		break;
	default:
		break;
	}
}