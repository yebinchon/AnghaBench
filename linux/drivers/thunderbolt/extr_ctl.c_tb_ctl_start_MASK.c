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
struct tb_ctl {int running; int /*<<< orphan*/ * rx_packets; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int TB_CTL_RX_PKG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct tb_ctl*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tb_ctl *ctl)
{
	int i;
	FUNC0(ctl, "control channel starting...\n");
	FUNC2(ctl->tx); /* is used to ack hotplug packets, start first */
	FUNC2(ctl->rx);
	for (i = 0; i < TB_CTL_RX_PKG_COUNT; i++)
		FUNC1(ctl->rx_packets[i]);

	ctl->running = true;
}