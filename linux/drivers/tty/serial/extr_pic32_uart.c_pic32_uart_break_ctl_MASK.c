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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct pic32_sport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIC32_UART_STA ; 
 int /*<<< orphan*/  PIC32_UART_STA_UTXBRK ; 
 int /*<<< orphan*/  FUNC2 (struct pic32_sport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pic32_sport* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, int ctl)
{
	struct pic32_sport *sport = FUNC5(port);
	unsigned long flags;

	FUNC3(&port->lock, flags);

	if (ctl)
		FUNC2(sport, FUNC1(PIC32_UART_STA),
					PIC32_UART_STA_UTXBRK);
	else
		FUNC2(sport, FUNC0(PIC32_UART_STA),
					PIC32_UART_STA_UTXBRK);

	FUNC4(&port->lock, flags);
}