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
typedef  int u8 ;
struct jsm_channel {int ch_flags; int /*<<< orphan*/  ch_lock; TYPE_1__* ch_bd; TYPE_2__* ch_cls_uart; } ;
struct TYPE_4__ {int /*<<< orphan*/  lcr; } ;
struct TYPE_3__ {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int CH_BREAK_SENDING ; 
 int /*<<< orphan*/  IOCTL ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct jsm_channel *ch)
{
	unsigned long lock_flags;

	FUNC2(&ch->ch_lock, lock_flags);

	/* Turn break off, and unset some variables */
	if (ch->ch_flags & CH_BREAK_SENDING) {
		u8 temp = FUNC1(&ch->ch_cls_uart->lcr);

		FUNC4((temp & ~UART_LCR_SBC), &ch->ch_cls_uart->lcr);

		ch->ch_flags &= ~(CH_BREAK_SENDING);
		FUNC0(IOCTL, &ch->ch_bd->pci_dev,
			"clear break Finishing UART_LCR_SBC! finished: %lx\n",
			jiffies);
	}
	FUNC3(&ch->ch_lock, lock_flags);
}