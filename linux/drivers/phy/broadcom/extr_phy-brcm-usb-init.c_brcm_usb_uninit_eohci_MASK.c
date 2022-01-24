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
struct brcm_usb_init_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB20_HC_RESETB ; 
 scalar_t__ FUNC0 (struct brcm_usb_init_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcm_usb_init_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PM ; 

void FUNC2(struct brcm_usb_init_params *params)
{
	if (FUNC0(params, USB_PM, USB20_HC_RESETB))
		FUNC1(params, USB_PM, USB20_HC_RESETB);
}