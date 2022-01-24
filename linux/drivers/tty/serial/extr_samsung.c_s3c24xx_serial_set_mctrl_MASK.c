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

/* Variables and functions */
 unsigned int S3C2410_UMCOM_RTS_LOW ; 
 int /*<<< orphan*/  S3C2410_UMCON ; 
 unsigned int TIOCM_RTS ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, unsigned int mctrl)
{
	unsigned int umcon = FUNC0(port, S3C2410_UMCON);

	if (mctrl & TIOCM_RTS)
		umcon |= S3C2410_UMCOM_RTS_LOW;
	else
		umcon &= ~S3C2410_UMCOM_RTS_LOW;

	FUNC1(port, S3C2410_UMCON, umcon);
}