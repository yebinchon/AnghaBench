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
struct dwc3_event_buffer {int /*<<< orphan*/  length; int /*<<< orphan*/  dma; scalar_t__ lpos; } ;
struct dwc3 {int /*<<< orphan*/  regs; struct dwc3_event_buffer* ev_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct dwc3 *dwc)
{
	struct dwc3_event_buffer	*evt;

	evt = dwc->ev_buf;
	evt->lpos = 0;
	FUNC5(dwc->regs, FUNC1(0),
			FUNC6(evt->dma));
	FUNC5(dwc->regs, FUNC0(0),
			FUNC7(evt->dma));
	FUNC5(dwc->regs, FUNC3(0),
			FUNC4(evt->length));
	FUNC5(dwc->regs, FUNC2(0), 0);

	return 0;
}