#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_6__ {int /*<<< orphan*/  cts; } ;
struct TYPE_5__ {int /*<<< orphan*/  cts_down; int /*<<< orphan*/  cts_up; } ;
struct slgt_info {int signals; TYPE_4__ port; int /*<<< orphan*/  pending_bh; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; TYPE_2__ icount; int /*<<< orphan*/  cts_chkcount; int /*<<< orphan*/  device_name; TYPE_1__ input_signal_events; } ;
struct TYPE_7__ {int hw_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_STATUS ; 
 int /*<<< orphan*/  BH_TRANSMIT ; 
 unsigned short BIT2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ; 
 int /*<<< orphan*/  IRQ_CTS ; 
 int SerialSignal_CTS ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct slgt_info *info, unsigned short status)
{
	if (status & BIT2) {
		info->signals |= SerialSignal_CTS;
		info->input_signal_events.cts_up++;
	} else {
		info->signals &= ~SerialSignal_CTS;
		info->input_signal_events.cts_down++;
	}
	FUNC0(("cts_change %s signals=%04X\n", info->device_name, info->signals));
	if ((info->cts_chkcount)++ == IO_PIN_SHUTDOWN_LIMIT) {
		FUNC1(info, IRQ_CTS);
		return;
	}
	info->icount.cts++;
	FUNC3(&info->status_event_wait_q);
	FUNC3(&info->event_wait_q);
	info->pending_bh |= BH_STATUS;

	if (FUNC2(&info->port)) {
		if (info->port.tty) {
			if (info->port.tty->hw_stopped) {
				if (info->signals & SerialSignal_CTS) {
		 			info->port.tty->hw_stopped = 0;
					info->pending_bh |= BH_TRANSMIT;
					return;
				}
			} else {
				if (!(info->signals & SerialSignal_CTS))
		 			info->port.tty->hw_stopped = 1;
			}
		}
	}
}