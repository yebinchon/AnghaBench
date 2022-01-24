#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct mxs_auart_port {TYPE_2__ port; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int AUART_STAT_RXFE ; 
 int /*<<< orphan*/  REG_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct mxs_auart_port*) ; 
 int FUNC1 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mxs_auart_port *s)
{
	u32 stat = 0;

	for (;;) {
		stat = FUNC1(s, REG_STAT);
		if (stat & AUART_STAT_RXFE)
			break;
		FUNC0(s);
	}

	FUNC2(stat, s, REG_STAT);
	FUNC3(&s->port.state->port);
}