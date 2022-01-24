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
struct TYPE_2__ {int /*<<< orphan*/  is_b_host; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 struct usb_hcd* FUNC2 (struct dwc2_hsotg*) ; 

__attribute__((used)) static void FUNC3(struct dwc2_hsotg *hsotg)
{
	struct usb_hcd *hcd = FUNC2(hsotg);

	hcd->self.is_b_host = FUNC1(hsotg);
	FUNC0(hcd);
}