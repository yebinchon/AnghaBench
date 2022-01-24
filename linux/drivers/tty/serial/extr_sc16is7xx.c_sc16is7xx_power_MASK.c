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
 int /*<<< orphan*/  SC16IS7XX_IER_REG ; 
 int /*<<< orphan*/  SC16IS7XX_IER_SLEEP_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct uart_port *port, int on)
{
	FUNC0(port, SC16IS7XX_IER_REG,
			      SC16IS7XX_IER_SLEEP_BIT,
			      on ? 0 : SC16IS7XX_IER_SLEEP_BIT);
}