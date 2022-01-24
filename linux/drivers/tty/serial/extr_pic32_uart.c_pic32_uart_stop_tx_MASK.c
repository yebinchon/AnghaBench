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
struct uart_port {int dummy; } ;
struct pic32_sport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIC32_UART_MODE ; 
 int PIC32_UART_MODE_ON ; 
 int /*<<< orphan*/  PIC32_UART_STA ; 
 int PIC32_UART_STA_UTXEN ; 
 int /*<<< orphan*/  FUNC1 (struct pic32_sport*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pic32_sport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pic32_sport*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pic32_sport*) ; 
 struct pic32_sport* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct pic32_sport *sport = FUNC5(port);

	if (!(FUNC2(sport, PIC32_UART_MODE) & PIC32_UART_MODE_ON))
		return;

	if (!(FUNC2(sport, PIC32_UART_STA) & PIC32_UART_STA_UTXEN))
		return;

	/* wait for tx empty */
	FUNC4(sport);

	FUNC3(sport, FUNC0(PIC32_UART_STA),
				PIC32_UART_STA_UTXEN);
	FUNC1(sport, 0);
}