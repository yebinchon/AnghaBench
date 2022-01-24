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
struct tty_struct {struct mxser_port* driver_data; } ;
struct mxser_port {int /*<<< orphan*/  slock; scalar_t__ ioaddr; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;

/* Variables and functions */
 scalar_t__ UART_FCR ; 
 char UART_FCR_CLEAR_RCVR ; 
 char UART_FCR_CLEAR_XMIT ; 
 char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct mxser_port *info = tty->driver_data;
	char fcr;
	unsigned long flags;


	FUNC2(&info->slock, flags);
	info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;

	fcr = FUNC0(info->ioaddr + UART_FCR);
	FUNC1((fcr | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT),
		info->ioaddr + UART_FCR);
	FUNC1(fcr, info->ioaddr + UART_FCR);

	FUNC3(&info->slock, flags);

	FUNC4(tty);
}