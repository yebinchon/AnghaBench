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
struct timer_list {int dummy; } ;
struct moschip_port {int /*<<< orphan*/  led_timer2; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF_MS ; 
 int /*<<< orphan*/  MODEM_CONTROL_REGISTER ; 
 struct moschip_port* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  led_timer1 ; 
 struct moschip_port* mcs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct moschip_port*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct moschip_port *mcs = FUNC0(mcs, t, led_timer1);

	/* Turn off LED */
	FUNC2(mcs, 0x0300, MODEM_CONTROL_REGISTER);
	FUNC1(&mcs->led_timer2,
				jiffies + FUNC3(LED_OFF_MS));
}