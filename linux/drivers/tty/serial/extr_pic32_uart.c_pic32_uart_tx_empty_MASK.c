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
typedef  int u32 ;
struct uart_port {int dummy; } ;
struct pic32_sport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIC32_UART_STA ; 
 int PIC32_UART_STA_TRMT ; 
 int FUNC0 (struct pic32_sport*,int /*<<< orphan*/ ) ; 
 struct pic32_sport* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC2(struct uart_port *port)
{
	struct pic32_sport *sport = FUNC1(port);
	u32 val = FUNC0(sport, PIC32_UART_STA);

	return (val & PIC32_UART_STA_TRMT) ? 1 : 0;
}