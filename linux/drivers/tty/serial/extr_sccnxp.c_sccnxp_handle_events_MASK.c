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
typedef  int u8 ;
struct TYPE_2__ {int nr; } ;
struct sccnxp_port {int imr; int /*<<< orphan*/ * port; scalar_t__* opened; TYPE_1__ uart; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SCCNXP_ISR_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sccnxp_port *s)
{
	int i;
	u8 isr;

	do {
		isr = FUNC4(&s->port[0], SCCNXP_ISR_REG);
		isr &= s->imr;
		if (!isr)
			break;

		for (i = 0; i < s->uart.nr; i++) {
			if (s->opened[i] && (isr & FUNC0(i)))
				FUNC2(&s->port[i]);
			if (s->opened[i] && (isr & FUNC1(i)))
				FUNC3(&s->port[i]);
		}
	} while (1);
}