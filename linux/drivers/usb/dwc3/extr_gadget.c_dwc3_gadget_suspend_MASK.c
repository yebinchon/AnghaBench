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
struct dwc3 {int /*<<< orphan*/  gadget_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*,int,int) ; 

int FUNC3(struct dwc3 *dwc)
{
	if (!dwc->gadget_driver)
		return 0;

	FUNC2(dwc, false, false);
	FUNC1(dwc);
	FUNC0(dwc);

	return 0;
}