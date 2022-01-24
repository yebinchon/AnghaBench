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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_DLL ; 
 int /*<<< orphan*/  UART_DLM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct uart_8250_port *up, int value)
{
	unsigned int dll;

	FUNC2(up, UART_DLL, value & 0xff);
	/*
	 * work around Erratum #74 according to Marvel(R) PXA270M Processor
	 * Specification Update (April 19, 2010)
	 */
	dll = FUNC1(up, UART_DLL);
	FUNC0(dll != (value & 0xff));

	FUNC2(up, UART_DLM, value >> 8 & 0xff);
}