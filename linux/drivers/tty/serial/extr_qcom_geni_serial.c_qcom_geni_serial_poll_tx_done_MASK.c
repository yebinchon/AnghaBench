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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CMD_ABORT_EN ; 
 int /*<<< orphan*/  M_CMD_DONE_EN ; 
 int /*<<< orphan*/  M_GENI_CMD_ABORT ; 
 scalar_t__ SE_GENI_M_CMD_CTRL_REG ; 
 scalar_t__ SE_GENI_M_IRQ_CLEAR ; 
 int /*<<< orphan*/  SE_GENI_M_IRQ_STATUS ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uart_port *uport)
{
	int done;
	u32 irq_clear = M_CMD_DONE_EN;

	done = FUNC0(uport, SE_GENI_M_IRQ_STATUS,
						M_CMD_DONE_EN, true);
	if (!done) {
		FUNC1(M_GENI_CMD_ABORT, uport->membase +
						SE_GENI_M_CMD_CTRL_REG);
		irq_clear |= M_CMD_ABORT_EN;
		FUNC0(uport, SE_GENI_M_IRQ_STATUS,
							M_CMD_ABORT_EN, true);
	}
	FUNC1(irq_clear, uport->membase + SE_GENI_M_IRQ_CLEAR);
}