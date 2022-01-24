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
 int /*<<< orphan*/  USB30_CTL1 ; 
 scalar_t__ FUNC0 (struct brcm_usb_init_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcm_usb_init_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcm_usb_init_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PM ; 
 int /*<<< orphan*/  XHC_SOFT_RESETB ; 

__attribute__((used)) static void FUNC3(struct brcm_usb_init_params *params,
				    int on_off)
{
	/* Assert reset */
	if (on_off) {
		if (FUNC0(params, USB_PM, XHC_SOFT_RESETB))
			FUNC2(params, USB_PM, XHC_SOFT_RESETB);
		else
			FUNC2(params,
					      USB30_CTL1, XHC_SOFT_RESETB);
	} else { /* De-assert reset */
		if (FUNC0(params, USB_PM, XHC_SOFT_RESETB))
			FUNC1(params, USB_PM, XHC_SOFT_RESETB);
		else
			FUNC1(params, USB30_CTL1,
					    XHC_SOFT_RESETB);
	}
}