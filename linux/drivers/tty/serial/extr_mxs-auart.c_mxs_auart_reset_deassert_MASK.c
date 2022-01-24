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
struct mxs_auart_port {int dummy; } ;

/* Variables and functions */
 unsigned int AUART_CTRL0_CLKGATE ; 
 unsigned int AUART_CTRL0_SFTRST ; 
 int /*<<< orphan*/  REG_CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct mxs_auart_port *s)
{
	int i;
	unsigned int reg;

	FUNC0(AUART_CTRL0_SFTRST, s, REG_CTRL0);

	for (i = 0; i < 10000; i++) {
		reg = FUNC1(s, REG_CTRL0);
		if (!(reg & AUART_CTRL0_SFTRST))
			break;
		FUNC2(3);
	}
	FUNC0(AUART_CTRL0_CLKGATE, s, REG_CTRL0);
}