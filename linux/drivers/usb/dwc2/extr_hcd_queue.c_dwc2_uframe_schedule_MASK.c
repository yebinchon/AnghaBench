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
struct dwc2_qh {scalar_t__ dev_speed; int /*<<< orphan*/  do_split; } ;
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,char*,struct dwc2_qh*,int) ; 
 int FUNC2 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int FUNC3 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int FUNC4 (struct dwc2_hsotg*,struct dwc2_qh*) ; 

__attribute__((used)) static int FUNC5(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
	int ret;

	if (qh->dev_speed == USB_SPEED_HIGH)
		ret = FUNC2(hsotg, qh);
	else if (!qh->do_split)
		ret = FUNC3(hsotg, qh);
	else
		ret = FUNC4(hsotg, qh);

	if (ret)
		FUNC1(hsotg, "QH=%p Failed to schedule %d\n", qh, ret);
	else
		FUNC0(hsotg, qh);

	return ret;
}