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
struct usbport_trig_data {scalar_t__ count; struct led_classdev* led_cdev; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbport_trig_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbport_trig_usb_dev_check ; 

__attribute__((used)) static void FUNC2(struct usbport_trig_data *usbport_data)
{
	struct led_classdev *led_cdev = usbport_data->led_cdev;

	usbport_data->count = 0;
	FUNC1(usbport_data, usbport_trig_usb_dev_check);
	FUNC0(led_cdev, usbport_data->count ? LED_FULL : LED_OFF);
}