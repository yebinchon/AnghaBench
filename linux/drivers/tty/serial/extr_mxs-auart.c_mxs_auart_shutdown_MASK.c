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
struct mxs_auart_port {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUART_CTRL0_CLKGATE ; 
 int AUART_CTRL2_UARTEN ; 
 int AUART_INTR_CTSMIEN ; 
 int AUART_INTR_RTIEN ; 
 int AUART_INTR_RXIEN ; 
 int /*<<< orphan*/  REG_CTRL0 ; 
 int /*<<< orphan*/  REG_CTRL2 ; 
 int /*<<< orphan*/  REG_INTR ; 
 scalar_t__ FUNC0 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 struct mxs_auart_port* FUNC7 (struct uart_port*) ; 
 scalar_t__ FUNC8 (struct uart_port*) ; 

__attribute__((used)) static void FUNC9(struct uart_port *u)
{
	struct mxs_auart_port *s = FUNC7(u);

	FUNC2(u);

	if (FUNC0(s))
		FUNC3(s);

	if (FUNC8(u)) {
		FUNC5(AUART_CTRL2_UARTEN, s, REG_CTRL2);

		FUNC5(AUART_INTR_RXIEN | AUART_INTR_RTIEN |
			AUART_INTR_CTSMIEN, s, REG_INTR);
		FUNC6(AUART_CTRL0_CLKGATE, s, REG_CTRL0);
	} else {
		FUNC4(s);
	}

	FUNC1(s->clk);
}