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
struct uart_sunsu_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_ICR ; 
 int /*<<< orphan*/  UART_SCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sunsu_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct uart_sunsu_port *up, int offset, int value)
{
	FUNC0(up, UART_SCR, offset);
	FUNC0(up, UART_ICR, value);
}