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
struct dwc3_event_buffer {int dummy; } ;
struct dwc3 {struct dwc3_event_buffer* ev_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dwc3_event_buffer*) ; 
 int FUNC1 (struct dwc3_event_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct dwc3_event_buffer* FUNC3 (struct dwc3*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct dwc3 *dwc, unsigned length)
{
	struct dwc3_event_buffer *evt;

	evt = FUNC3(dwc, length);
	if (FUNC0(evt)) {
		FUNC2(dwc->dev, "can't allocate event buffer\n");
		return FUNC1(evt);
	}
	dwc->ev_buf = evt;

	return 0;
}