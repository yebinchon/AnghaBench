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
typedef  int u32 ;
struct dwc2_hsotg {int dummy; } ;
struct dwc2_host_chan {int /*<<< orphan*/  hc_num; int /*<<< orphan*/  split_order_list_entry; scalar_t__ xfer_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int HCINTMSK_RESERVED14_31 ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dwc2_hsotg *hsotg, struct dwc2_host_chan *chan)
{
	u32 hcintmsk;

	chan->xfer_started = 0;

	FUNC3(&chan->split_order_list_entry);

	/*
	 * Clear channel interrupt enables and any unhandled channel interrupt
	 * conditions
	 */
	FUNC2(hsotg, 0, FUNC1(chan->hc_num));
	hcintmsk = 0xffffffff;
	hcintmsk &= ~HCINTMSK_RESERVED14_31;
	FUNC2(hsotg, hcintmsk, FUNC0(chan->hc_num));
}