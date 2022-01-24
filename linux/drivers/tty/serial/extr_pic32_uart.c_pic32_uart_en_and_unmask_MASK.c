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
 int PIC32_UART_STA_URXEN ; 
 int PIC32_UART_STA_UTXEN ; 
 int /*<<< orphan*/  FUNC1 (struct pic32_sport*,int /*<<< orphan*/ ,int) ; 
 struct pic32_sport* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct pic32_sport *sport = FUNC2(port);

	FUNC1(sport, FUNC0(PIC32_UART_STA),
				PIC32_UART_STA_UTXEN | PIC32_UART_STA_URXEN);
	FUNC1(sport, FUNC0(PIC32_UART_MODE),
				PIC32_UART_MODE_ON);
}