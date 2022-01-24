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
typedef  int /*<<< orphan*/  u8 ;
struct aspeed_vuart {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ ASPEED_VUART_GCRA ; 
 int /*<<< orphan*/  ASPEED_VUART_GCRA_DISABLE_HOST_TX_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct aspeed_vuart *vuart,
					     bool discard)
{
	u8 reg;

	reg = FUNC0(vuart->regs + ASPEED_VUART_GCRA);

	/* If the DISABLE_HOST_TX_DISCARD bit is set, discard is disabled */
	if (!discard)
		reg |= ASPEED_VUART_GCRA_DISABLE_HOST_TX_DISCARD;
	else
		reg &= ~ASPEED_VUART_GCRA_DISABLE_HOST_TX_DISCARD;

	FUNC1(reg, vuart->regs + ASPEED_VUART_GCRA);
}