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
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct usbport_trig_data {TYPE_2__ nb; int /*<<< orphan*/  ports; struct led_classdev* led_cdev; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbport_trig_data*) ; 
 struct usbport_trig_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*,struct usbport_trig_data*) ; 
 int /*<<< orphan*/  ports_group ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usbport_trig_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  usbport_trig_add_usb_dev_ports ; 
 int /*<<< orphan*/  usbport_trig_notify ; 
 int /*<<< orphan*/  FUNC7 (struct usbport_trig_data*) ; 

__attribute__((used)) static int FUNC8(struct led_classdev *led_cdev)
{
	struct usbport_trig_data *usbport_data;
	int err;

	usbport_data = FUNC2(sizeof(*usbport_data), GFP_KERNEL);
	if (!usbport_data)
		return -ENOMEM;
	usbport_data->led_cdev = led_cdev;

	/* List of ports */
	FUNC0(&usbport_data->ports);
	err = FUNC4(&led_cdev->dev->kobj, &ports_group);
	if (err)
		goto err_free;
	FUNC5(usbport_data, usbport_trig_add_usb_dev_ports);
	FUNC7(usbport_data);

	/* Notifications */
	usbport_data->nb.notifier_call = usbport_trig_notify;
	FUNC3(led_cdev, usbport_data);
	FUNC6(&usbport_data->nb);
	return 0;

err_free:
	FUNC1(usbport_data);
	return err;
}