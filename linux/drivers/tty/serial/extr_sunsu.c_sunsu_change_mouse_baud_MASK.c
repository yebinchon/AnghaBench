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
struct TYPE_2__ {int uartclk; } ;
struct uart_sunsu_port {unsigned int cflag; TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int CBAUD ; 
 unsigned int FUNC0 (unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct uart_sunsu_port *up)
{
	unsigned int cur_cflag = up->cflag;
	int quot, new_baud;

	up->cflag &= ~CBAUD;
	up->cflag |= FUNC0(cur_cflag, &new_baud);

	quot = up->port.uartclk / (16 * new_baud);

	FUNC1(&up->port, up->cflag, 0, quot);
}