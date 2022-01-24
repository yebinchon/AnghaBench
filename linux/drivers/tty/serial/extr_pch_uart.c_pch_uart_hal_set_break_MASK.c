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
struct eg20t_port {scalar_t__ membase; } ;

/* Variables and functions */
 unsigned int PCH_UART_LCR_SB ; 
 scalar_t__ UART_LCR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct eg20t_port *priv, int on)
{
	unsigned int lcr;

	lcr = FUNC0(priv->membase + UART_LCR);
	if (on)
		lcr |= PCH_UART_LCR_SB;
	else
		lcr &= ~PCH_UART_LCR_SB;

	FUNC1(lcr, priv->membase + UART_LCR);
}