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
struct usbatm_data {TYPE_1__* usb_intf; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct cxacru_data {struct usbatm_data* usbatm; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct firmware const**,char*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbatm_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbatm_data*,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct cxacru_data *instance,
				char *phase, const struct firmware **fw_p)
{
	struct usbatm_data *usbatm = instance->usbatm;
	struct device *dev = &usbatm->usb_intf->dev;
	char buf[16];

	FUNC1(buf, "cxacru-%s.bin", phase);
	FUNC2(usbatm, "cxacru_find_firmware: looking for %s\n", buf);

	if (FUNC0(fw_p, buf, dev)) {
		FUNC2(usbatm, "no stage %s firmware found\n", phase);
		return -ENOENT;
	}

	FUNC3(usbatm, "found firmware %s\n", buf);

	return 0;
}