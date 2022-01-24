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
struct usb_driver {int /*<<< orphan*/  dynids; } ;
struct device_driver {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct usb_driver* FUNC0 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device_driver *driver, char *buf)
{
	struct usb_driver *usb_drv = FUNC0(driver);

	return FUNC1(&usb_drv->dynids, buf);
}