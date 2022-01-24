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
struct amvdec_core {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PARSER_INTSTAT_SC_FOUND ; 
 int /*<<< orphan*/  PARSER_INT_STATUS ; 
 int /*<<< orphan*/  PFIFO_RD_PTR ; 
 int /*<<< orphan*/  PFIFO_WR_PTR ; 
 int FUNC0 (struct amvdec_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 int search_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev)
{
	int int_status;
	struct amvdec_core *core = dev;

	int_status = FUNC0(core, PARSER_INT_STATUS);
	FUNC1(core, PARSER_INT_STATUS, int_status);

	if (int_status & PARSER_INTSTAT_SC_FOUND) {
		FUNC1(core, PFIFO_RD_PTR, 0);
		FUNC1(core, PFIFO_WR_PTR, 0);
		search_done = 1;
		FUNC2(&wq);
	}

	return IRQ_HANDLED;
}