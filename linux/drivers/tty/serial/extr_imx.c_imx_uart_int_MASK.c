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
struct TYPE_3__ {int /*<<< orphan*/  overrun; } ;
struct TYPE_4__ {TYPE_1__ icount; int /*<<< orphan*/  lock; } ;
struct imx_port {TYPE_2__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  UCR1 ; 
 unsigned int UCR1_RRDYEN ; 
 unsigned int UCR1_RTSDEN ; 
 unsigned int UCR1_TRDYEN ; 
 int /*<<< orphan*/  UCR2 ; 
 unsigned int UCR2_ATEN ; 
 int /*<<< orphan*/  UCR3 ; 
 unsigned int UCR3_AWAKEN ; 
 unsigned int UCR3_DTRDEN ; 
 int /*<<< orphan*/  UCR4 ; 
 unsigned int UCR4_OREN ; 
 unsigned int UCR4_TCEN ; 
 int /*<<< orphan*/  USR1 ; 
 unsigned int USR1_AGTIM ; 
 unsigned int USR1_AWAKE ; 
 unsigned int USR1_DTRD ; 
 unsigned int USR1_RRDY ; 
 unsigned int USR1_RTSD ; 
 unsigned int USR1_TRDY ; 
 int /*<<< orphan*/  USR2 ; 
 unsigned int USR2_ORE ; 
 unsigned int USR2_TXDC ; 
 int /*<<< orphan*/  FUNC0 (struct imx_port*) ; 
 unsigned int FUNC1 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct imx_port *sport = dev_id;
	unsigned int usr1, usr2, ucr1, ucr2, ucr3, ucr4;
	irqreturn_t ret = IRQ_NONE;

	usr1 = FUNC1(sport, USR1);
	usr2 = FUNC1(sport, USR2);
	ucr1 = FUNC1(sport, UCR1);
	ucr2 = FUNC1(sport, UCR2);
	ucr3 = FUNC1(sport, UCR3);
	ucr4 = FUNC1(sport, UCR4);

	/*
	 * Even if a condition is true that can trigger an irq only handle it if
	 * the respective irq source is enabled. This prevents some undesired
	 * actions, for example if a character that sits in the RX FIFO and that
	 * should be fetched via DMA is tried to be fetched using PIO. Or the
	 * receiver is currently off and so reading from URXD0 results in an
	 * exception. So just mask the (raw) status bits for disabled irqs.
	 */
	if ((ucr1 & UCR1_RRDYEN) == 0)
		usr1 &= ~USR1_RRDY;
	if ((ucr2 & UCR2_ATEN) == 0)
		usr1 &= ~USR1_AGTIM;
	if ((ucr1 & UCR1_TRDYEN) == 0)
		usr1 &= ~USR1_TRDY;
	if ((ucr4 & UCR4_TCEN) == 0)
		usr2 &= ~USR2_TXDC;
	if ((ucr3 & UCR3_DTRDEN) == 0)
		usr1 &= ~USR1_DTRD;
	if ((ucr1 & UCR1_RTSDEN) == 0)
		usr1 &= ~USR1_RTSD;
	if ((ucr3 & UCR3_AWAKEN) == 0)
		usr1 &= ~USR1_AWAKE;
	if ((ucr4 & UCR4_OREN) == 0)
		usr2 &= ~USR2_ORE;

	if (usr1 & (USR1_RRDY | USR1_AGTIM)) {
		FUNC3(irq, dev_id);
		ret = IRQ_HANDLED;
	}

	if ((usr1 & USR1_TRDY) || (usr2 & USR2_TXDC)) {
		FUNC4(irq, dev_id);
		ret = IRQ_HANDLED;
	}

	if (usr1 & USR1_DTRD) {
		FUNC5(sport, USR1_DTRD, USR1);

		FUNC6(&sport->port.lock);
		FUNC0(sport);
		FUNC7(&sport->port.lock);

		ret = IRQ_HANDLED;
	}

	if (usr1 & USR1_RTSD) {
		FUNC2(irq, dev_id);
		ret = IRQ_HANDLED;
	}

	if (usr1 & USR1_AWAKE) {
		FUNC5(sport, USR1_AWAKE, USR1);
		ret = IRQ_HANDLED;
	}

	if (usr2 & USR2_ORE) {
		sport->port.icount.overrun++;
		FUNC5(sport, USR2_ORE, USR2);
		ret = IRQ_HANDLED;
	}

	return ret;
}