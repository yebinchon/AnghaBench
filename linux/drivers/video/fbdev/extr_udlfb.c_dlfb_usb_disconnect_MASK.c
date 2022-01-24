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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct fb_info {int /*<<< orphan*/  dev; } ;
struct dlfb_data {int virtualized; int /*<<< orphan*/  usb_active; struct fb_info* info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dlfb_data*) ; 
 int /*<<< orphan*/  edid_attr ; 
 int /*<<< orphan*/ * fb_device_attrs ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 struct dlfb_data* FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct dlfb_data *dlfb;
	struct fb_info *info;
	int i;

	dlfb = FUNC7(intf);
	info = dlfb->info;

	FUNC2(&intf->dev, "USB disconnect starting\n");

	/* we virtualize until all fb clients release. Then we free */
	dlfb->virtualized = true;

	/* When non-active we'll update virtual framebuffer, but no new urbs */
	FUNC1(&dlfb->usb_active, 0);

	/* this function will wait for all in-flight urbs to complete */
	FUNC5(dlfb);

	/* remove udlfb's sysfs interfaces */
	for (i = 0; i < FUNC0(fb_device_attrs); i++)
		FUNC4(info->dev, &fb_device_attrs[i]);
	FUNC3(info->dev, &edid_attr);

	FUNC6(info);
}