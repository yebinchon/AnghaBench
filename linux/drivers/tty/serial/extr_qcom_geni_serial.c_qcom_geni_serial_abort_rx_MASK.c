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
typedef  int u32 ;
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 int FORCE_DEFAULT ; 
 scalar_t__ GENI_FORCE_DEFAULT_REG ; 
 scalar_t__ SE_GENI_S_CMD_CTRL_REG ; 
 scalar_t__ SE_GENI_S_IRQ_CLEAR ; 
 int S_CMD_ABORT_EN ; 
 int S_CMD_DONE_EN ; 
 int S_GENI_CMD_ABORT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uart_port *uport)
{
	u32 irq_clear = S_CMD_DONE_EN | S_CMD_ABORT_EN;

	FUNC1(S_GENI_CMD_ABORT, uport->membase + SE_GENI_S_CMD_CTRL_REG);
	FUNC0(uport, SE_GENI_S_CMD_CTRL_REG,
					S_GENI_CMD_ABORT, false);
	FUNC1(irq_clear, uport->membase + SE_GENI_S_IRQ_CLEAR);
	FUNC1(FORCE_DEFAULT, uport->membase + GENI_FORCE_DEFAULT_REG);
}