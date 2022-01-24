#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  is_devspec; } ;
union dwc3_event {int /*<<< orphan*/  raw; int /*<<< orphan*/  devt; TYPE_1__ type; int /*<<< orphan*/  depevt; } ;
struct dwc3 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DWC3_EVENT_TYPE_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dwc3*) ; 

__attribute__((used)) static void FUNC4(struct dwc3 *dwc,
		const union dwc3_event *event)
{
	FUNC3(event->raw, dwc);

	if (!event->type.is_devspec)
		FUNC1(dwc, &event->depevt);
	else if (event->type.type == DWC3_EVENT_TYPE_DEV)
		FUNC2(dwc, &event->devt);
	else
		FUNC0(dwc->dev, "UNKNOWN IRQ type %d\n", event->raw);
}