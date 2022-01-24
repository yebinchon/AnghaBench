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
struct dwc3_event_depevt {int dummy; } ;
struct dwc3_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc3_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3_ep*,struct dwc3_event_depevt const*) ; 

__attribute__((used)) static void FUNC2(struct dwc3_ep *dep,
		const struct dwc3_event_depevt *event)
{
	FUNC1(dep, event);
	(void) FUNC0(dep);
}