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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  spinlock; scalar_t__ port_tts; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* read_buff_add ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ UART_LSR ; 
 int UART_LSR_DR ; 
 scalar_t__ UART_RX ; 
 int FUNC0 (scalar_t__) ; 
 TYPE_2__ speakup_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* synth ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	unsigned long flags;
	int c;

	FUNC1(&speakup_info.spinlock, flags);
	while (FUNC0(speakup_info.port_tts + UART_LSR) & UART_LSR_DR) {
		c = FUNC0(speakup_info.port_tts + UART_RX);
		synth->read_buff_add((u_char)c);
	}
	FUNC2(&speakup_info.spinlock, flags);
	return IRQ_HANDLED;
}