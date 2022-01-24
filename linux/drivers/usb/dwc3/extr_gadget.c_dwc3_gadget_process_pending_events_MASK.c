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
struct dwc3 {int pending_events; int /*<<< orphan*/  irq_gadget; int /*<<< orphan*/  ev_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct dwc3 *dwc)
{
	if (dwc->pending_events) {
		FUNC0(dwc->irq_gadget, dwc->ev_buf);
		dwc->pending_events = false;
		FUNC1(dwc->irq_gadget);
	}
}