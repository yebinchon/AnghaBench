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
struct TYPE_4__ {scalar_t__ mode; } ;
struct slgt_info {int rx_restart; int rx_enabled; TYPE_2__ params; TYPE_1__* rbufs; scalar_t__ rx_pio; } ;
struct TYPE_3__ {scalar_t__ pdesc; } ;

/* Variables and functions */
 scalar_t__ BIT0 ; 
 unsigned short BIT1 ; 
 unsigned short BIT14 ; 
 unsigned short BIT2 ; 
 scalar_t__ BIT6 ; 
 unsigned short IRQ_RXDATA ; 
 unsigned short IRQ_RXOVER ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 int /*<<< orphan*/  RCR ; 
 int /*<<< orphan*/  RDCSR ; 
 int /*<<< orphan*/  RDDAR ; 
 int /*<<< orphan*/  SCR ; 
 int /*<<< orphan*/  SSR ; 
 unsigned short FUNC0 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct slgt_info *info)
{
	unsigned short val;

	FUNC3(info, IRQ_RXOVER + IRQ_RXDATA);

	/* clear pending rx overrun IRQ */
	FUNC5(info, SSR, IRQ_RXOVER);

	/* reset and disable receiver */
	val = FUNC0(info, RCR) & ~BIT1; /* clear enable bit */
	FUNC5(info, RCR, (unsigned short)(val | BIT2)); /* set reset bit */
	FUNC5(info, RCR, val);                  /* clear reset bit */

	FUNC1(info);
	FUNC2(info);

	if (info->rx_pio) {
		/* rx request when rx FIFO not empty */
		FUNC5(info, SCR, (unsigned short)(FUNC0(info, SCR) & ~BIT14));
		FUNC4(info, IRQ_RXDATA);
		if (info->params.mode == MGSL_MODE_ASYNC) {
			/* enable saving of rx status */
			FUNC6(info, RDCSR, BIT6);
		}
	} else {
		/* rx request when rx FIFO half full */
		FUNC5(info, SCR, (unsigned short)(FUNC0(info, SCR) | BIT14));
		/* set 1st descriptor address */
		FUNC6(info, RDDAR, info->rbufs[0].pdesc);

		if (info->params.mode != MGSL_MODE_ASYNC) {
			/* enable rx DMA and DMA interrupt */
			FUNC6(info, RDCSR, (BIT2 + BIT0));
		} else {
			/* enable saving of rx status, rx DMA and DMA interrupt */
			FUNC6(info, RDCSR, (BIT6 + BIT2 + BIT0));
		}
	}

	FUNC4(info, IRQ_RXOVER);

	/* enable receiver */
	FUNC5(info, RCR, (unsigned short)(FUNC0(info, RCR) | BIT1));

	info->rx_restart = false;
	info->rx_enabled = true;
}