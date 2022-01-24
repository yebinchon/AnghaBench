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
struct usb_interface {int dummy; } ;
struct nfcmrvl_usb_drv_data {int /*<<< orphan*/  intf; int /*<<< orphan*/  priv; TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfcmrvl_usb_drv_data* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *intf)
{
	struct nfcmrvl_usb_drv_data *drv_data = FUNC2(intf);

	if (!drv_data)
		return;

	FUNC0(&drv_data->udev->dev, "intf %p\n", intf);

	FUNC1(drv_data->priv);

	FUNC3(drv_data->intf, NULL);
}