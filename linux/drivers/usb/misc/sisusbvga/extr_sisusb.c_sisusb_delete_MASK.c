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
struct sisusb_usb_data {struct sisusb_usb_data* SiS_Pr; int /*<<< orphan*/ * sisusb_dev; } ;
struct kref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sisusb_usb_data*) ; 
 struct sisusb_usb_data* FUNC3 (struct kref*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kref *kref)
{
	struct sisusb_usb_data *sisusb = FUNC3(kref);

	if (!sisusb)
		return;

	FUNC4(sisusb->sisusb_dev);

	sisusb->sisusb_dev = NULL;
	FUNC1(sisusb);
	FUNC2(sisusb);
#ifdef CONFIG_USB_SISUSBVGA_CON
	kfree(sisusb->SiS_Pr);
#endif
	FUNC0(sisusb);
}