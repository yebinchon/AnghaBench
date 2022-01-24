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
struct uart_sunsu_port {scalar_t__ su_type; int /*<<< orphan*/  serio; } ;

/* Variables and functions */
 scalar_t__ SU_PORT_KBD ; 
 scalar_t__ SU_PORT_MS ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_DR ; 
 int /*<<< orphan*/  UART_RX ; 
 int FUNC0 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_sunsu_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_sunsu_port *up, int is_break)
{
	do {
		unsigned char ch = FUNC1(up, UART_RX);

		/* Stop-A is handled by drivers/char/keyboard.c now. */
		if (up->su_type == SU_PORT_KBD) {
#ifdef CONFIG_SERIO
			serio_interrupt(&up->serio, ch, 0);
#endif
		} else if (up->su_type == SU_PORT_MS) {
			int ret = FUNC3(ch, is_break);

			switch (ret) {
			case 2:
				FUNC4(up);
				/* fallthru */
			case 1:
				break;

			case 0:
#ifdef CONFIG_SERIO
				serio_interrupt(&up->serio, ch, 0);
#endif
				break;
			}
		}
	} while (FUNC0(up, UART_LSR) & UART_LSR_DR);
}