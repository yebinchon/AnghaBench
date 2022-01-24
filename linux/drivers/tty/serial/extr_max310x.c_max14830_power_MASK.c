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
 int /*<<< orphan*/  MAX14830_BRGCFG_CLKDIS_BIT ; 
 int /*<<< orphan*/  MAX310X_BRGCFG_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, int on)
{
	FUNC0(port, MAX310X_BRGCFG_REG,
			    MAX14830_BRGCFG_CLKDIS_BIT,
			    on ? 0 : MAX14830_BRGCFG_CLKDIS_BIT);
	if (on)
		FUNC1(50);
}