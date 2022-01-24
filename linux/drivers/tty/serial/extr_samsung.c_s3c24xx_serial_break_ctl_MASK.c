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

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UCON ; 
 unsigned int S3C2410_UCON_SBREAK ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int break_state)
{
	unsigned long flags;
	unsigned int ucon;

	FUNC1(&port->lock, flags);

	ucon = FUNC0(port, S3C2410_UCON);

	if (break_state)
		ucon |= S3C2410_UCON_SBREAK;
	else
		ucon &= ~S3C2410_UCON_SBREAK;

	FUNC3(port, S3C2410_UCON, ucon);

	FUNC2(&port->lock, flags);
}