#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tty; int /*<<< orphan*/  open_wait; } ;
struct TYPE_5__ {int /*<<< orphan*/  dcd; } ;
struct TYPE_4__ {int /*<<< orphan*/  dcd_down; int /*<<< orphan*/  dcd_up; } ;
struct slgt_info {int signals; TYPE_3__ port; int /*<<< orphan*/  pending_bh; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; int /*<<< orphan*/  netdev; scalar_t__ netcount; TYPE_2__ icount; int /*<<< orphan*/  dcd_chkcount; int /*<<< orphan*/  device_name; TYPE_1__ input_signal_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_STATUS ; 
 unsigned short BIT1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ; 
 int /*<<< orphan*/  IRQ_DCD ; 
 int SerialSignal_DCD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct slgt_info *info, unsigned short status)
{
	if (status & BIT1) {
		info->signals |= SerialSignal_DCD;
		info->input_signal_events.dcd_up++;
	} else {
		info->signals &= ~SerialSignal_DCD;
		info->input_signal_events.dcd_down++;
	}
	FUNC0(("dcd_change %s signals=%04X\n", info->device_name, info->signals));
	if ((info->dcd_chkcount)++ == IO_PIN_SHUTDOWN_LIMIT) {
		FUNC3(info, IRQ_DCD);
		return;
	}
	info->icount.dcd++;
#if SYNCLINK_GENERIC_HDLC
	if (info->netcount) {
		if (info->signals & SerialSignal_DCD)
			netif_carrier_on(info->netdev);
		else
			netif_carrier_off(info->netdev);
	}
#endif
	FUNC6(&info->status_event_wait_q);
	FUNC6(&info->event_wait_q);
	info->pending_bh |= BH_STATUS;

	if (FUNC5(&info->port)) {
		if (info->signals & SerialSignal_DCD)
			FUNC6(&info->port.open_wait);
		else {
			if (info->port.tty)
				FUNC4(info->port.tty);
		}
	}
}