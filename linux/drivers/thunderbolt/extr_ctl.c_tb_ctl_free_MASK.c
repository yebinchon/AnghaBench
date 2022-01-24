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
struct tb_ctl {int /*<<< orphan*/  frame_pool; int /*<<< orphan*/ * rx_packets; scalar_t__ tx; scalar_t__ rx; } ;

/* Variables and functions */
 int TB_CTL_RX_PKG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_ctl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct tb_ctl *ctl)
{
	int i;

	if (!ctl)
		return;

	if (ctl->rx)
		FUNC3(ctl->rx);
	if (ctl->tx)
		FUNC3(ctl->tx);

	/* free RX packets */
	for (i = 0; i < TB_CTL_RX_PKG_COUNT; i++)
		FUNC2(ctl->rx_packets[i]);


	FUNC0(ctl->frame_pool);
	FUNC1(ctl);
}