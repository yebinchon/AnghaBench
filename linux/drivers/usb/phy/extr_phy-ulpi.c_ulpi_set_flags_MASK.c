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
struct usb_phy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usb_phy*) ; 
 int FUNC1 (struct usb_phy*) ; 
 int FUNC2 (struct usb_phy*) ; 

__attribute__((used)) static int FUNC3(struct usb_phy *phy)
{
	int ret;

	ret = FUNC2(phy);
	if (ret)
		return ret;

	ret = FUNC1(phy);
	if (ret)
		return ret;

	return FUNC0(phy);
}