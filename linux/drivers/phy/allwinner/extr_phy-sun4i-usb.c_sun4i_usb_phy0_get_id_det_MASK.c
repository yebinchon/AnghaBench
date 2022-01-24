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
struct sun4i_usb_phy_data {int dr_mode; int /*<<< orphan*/  id_det_gpio; } ;

/* Variables and functions */
#define  USB_DR_MODE_HOST 130 
#define  USB_DR_MODE_OTG 129 
#define  USB_DR_MODE_PERIPHERAL 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct sun4i_usb_phy_data *data)
{
	switch (data->dr_mode) {
	case USB_DR_MODE_OTG:
		if (data->id_det_gpio)
			return FUNC0(data->id_det_gpio);
		else
			return 1; /* Fallback to peripheral mode */
	case USB_DR_MODE_HOST:
		return 0;
	case USB_DR_MODE_PERIPHERAL:
	default:
		return 1;
	}
}