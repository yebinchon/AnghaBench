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
struct dwc3 {scalar_t__ edev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GCTL_PRTCAP_DEVICE ; 
 int /*<<< orphan*/  DWC3_GCTL_PRTCAP_HOST ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dwc3 *dwc)
{
	int id;

	if (dwc->edev) {
		id = FUNC1(dwc->edev, EXTCON_USB_HOST);
		if (id < 0)
			id = 0;
		FUNC0(dwc, id ?
			      DWC3_GCTL_PRTCAP_HOST :
			      DWC3_GCTL_PRTCAP_DEVICE);
	}
}