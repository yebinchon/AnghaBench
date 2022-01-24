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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct imx_port {int context_saved; TYPE_1__ port; void** saved_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX21_UTS ; 
 int /*<<< orphan*/  UBIR ; 
 int /*<<< orphan*/  UBMR ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  UCR3 ; 
 int /*<<< orphan*/  UCR4 ; 
 int /*<<< orphan*/  UESC ; 
 int /*<<< orphan*/  UFCR ; 
 int /*<<< orphan*/  UTIM ; 
 void* FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct imx_port *sport)
{
	unsigned long flags;

	/* Save necessary regs */
	FUNC1(&sport->port.lock, flags);
	sport->saved_reg[0] = FUNC0(sport, UCR1);
	sport->saved_reg[1] = FUNC0(sport, UCR2);
	sport->saved_reg[2] = FUNC0(sport, UCR3);
	sport->saved_reg[3] = FUNC0(sport, UCR4);
	sport->saved_reg[4] = FUNC0(sport, UFCR);
	sport->saved_reg[5] = FUNC0(sport, UESC);
	sport->saved_reg[6] = FUNC0(sport, UTIM);
	sport->saved_reg[7] = FUNC0(sport, UBIR);
	sport->saved_reg[8] = FUNC0(sport, UBMR);
	sport->saved_reg[9] = FUNC0(sport, IMX21_UTS);
	sport->context_saved = true;
	FUNC2(&sport->port.lock, flags);
}