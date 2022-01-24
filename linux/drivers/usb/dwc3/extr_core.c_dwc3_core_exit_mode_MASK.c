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
struct dwc3 {int dr_mode; } ;

/* Variables and functions */
#define  USB_DR_MODE_HOST 130 
#define  USB_DR_MODE_OTG 129 
#define  USB_DR_MODE_PERIPHERAL 128 
 int /*<<< orphan*/  FUNC0 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*) ; 

__attribute__((used)) static void FUNC3(struct dwc3 *dwc)
{
	switch (dwc->dr_mode) {
	case USB_DR_MODE_PERIPHERAL:
		FUNC1(dwc);
		break;
	case USB_DR_MODE_HOST:
		FUNC2(dwc);
		break;
	case USB_DR_MODE_OTG:
		FUNC0(dwc);
		break;
	default:
		/* do nothing */
		break;
	}
}