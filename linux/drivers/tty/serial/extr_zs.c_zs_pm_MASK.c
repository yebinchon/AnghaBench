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
struct zs_port {int /*<<< orphan*/ * regs; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  TxENAB ; 
 struct zs_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct zs_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *uport, unsigned int state,
		  unsigned int oldstate)
{
	struct zs_port *zport = FUNC0(uport);

	if (state < 3)
		zport->regs[5] |= TxENAB;
	else
		zport->regs[5] &= ~TxENAB;
	FUNC1(zport, R5, zport->regs[5]);
}