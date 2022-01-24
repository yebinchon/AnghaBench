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
struct ssusb_mtk {int is_host; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int USB_ROLE_HOST ; 
 struct ssusb_mtk* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssusb_mtk*,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, enum usb_role role)
{
	struct ssusb_mtk *ssusb = FUNC0(dev);
	bool to_host = false;

	if (role == USB_ROLE_HOST)
		to_host = true;

	if (to_host ^ ssusb->is_host)
		FUNC1(ssusb, to_host);

	return 0;
}