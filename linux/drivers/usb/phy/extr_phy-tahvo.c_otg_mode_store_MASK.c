#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* otg; } ;
struct tahvo_usb {scalar_t__ tahvo_mode; int /*<<< orphan*/  serialize; TYPE_2__ phy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {scalar_t__ gadget; scalar_t__ host; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TAHVO_MODE_HOST ; 
 scalar_t__ TAHVO_MODE_PERIPHERAL ; 
 struct tahvo_usb* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tahvo_usb*) ; 
 int /*<<< orphan*/  FUNC7 (struct tahvo_usb*) ; 
 int /*<<< orphan*/  FUNC8 (struct tahvo_usb*) ; 
 int /*<<< orphan*/  FUNC9 (struct tahvo_usb*) ; 
 int /*<<< orphan*/  FUNC10 (struct tahvo_usb*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *device,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct tahvo_usb *tu = FUNC0(device);
	int r;

	FUNC2(&tu->serialize);
	if (count >= 4 && FUNC5(buf, "host", 4) == 0) {
		if (tu->tahvo_mode == TAHVO_MODE_PERIPHERAL)
			FUNC10(tu);
		tu->tahvo_mode = TAHVO_MODE_HOST;
		if (tu->phy.otg->host) {
			FUNC1(device, "HOST mode: host controller present\n");
			FUNC6(tu);
		} else {
			FUNC1(device, "HOST mode: no host controller, powering off\n");
			FUNC8(tu);
		}
		r = FUNC4(buf);
	} else if (count >= 10 && FUNC5(buf, "peripheral", 10) == 0) {
		if (tu->tahvo_mode == TAHVO_MODE_HOST)
			FUNC9(tu);
		tu->tahvo_mode = TAHVO_MODE_PERIPHERAL;
		if (tu->phy.otg->gadget) {
			FUNC1(device, "PERIPHERAL mode: gadget driver present\n");
			FUNC7(tu);
		} else {
			FUNC1(device, "PERIPHERAL mode: no gadget driver, powering off\n");
			FUNC8(tu);
		}
		r = FUNC4(buf);
	} else {
		r = -EINVAL;
	}
	FUNC3(&tu->serialize);

	return r;
}