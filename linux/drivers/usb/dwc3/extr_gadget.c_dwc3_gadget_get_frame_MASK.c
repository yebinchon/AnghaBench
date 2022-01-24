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
struct usb_gadget {int dummy; } ;
struct dwc3 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dwc3*) ; 
 struct dwc3* FUNC1 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *g)
{
	struct dwc3		*dwc = FUNC1(g);

	return FUNC0(dwc);
}