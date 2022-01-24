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
struct usb_ep {int dummy; } ;
struct dwc3_ep {struct dwc3* dwc; } ;
struct dwc3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc3*) ; 
 struct dwc3_ep* FUNC1 (struct usb_ep*) ; 

int FUNC2(struct usb_ep *ep, int value)
{
	struct dwc3_ep			*dep = FUNC1(ep);
	struct dwc3			*dwc = dep->dwc;

	FUNC0(dwc);

	return 0;
}