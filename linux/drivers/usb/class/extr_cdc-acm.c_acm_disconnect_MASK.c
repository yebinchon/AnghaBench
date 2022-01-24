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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct tty_struct {int dummy; } ;
struct acm {int disconnected; int rx_buflimit; int /*<<< orphan*/  port; struct usb_interface* control; struct usb_interface* data; int /*<<< orphan*/  combined_interfaces; int /*<<< orphan*/  notification_buffer; int /*<<< orphan*/  ctrl_dma; int /*<<< orphan*/  ctrl_buffer; int /*<<< orphan*/  ctrlsize; int /*<<< orphan*/  dev; int /*<<< orphan*/ * read_urbs; TYPE_1__* wb; int /*<<< orphan*/  ctrlurb; int /*<<< orphan*/  minor; int /*<<< orphan*/  work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wioctl; scalar_t__ country_codes; } ;
struct TYPE_2__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int ACM_NW ; 
 int /*<<< orphan*/  acm_driver ; 
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int /*<<< orphan*/  FUNC1 (struct acm*) ; 
 int /*<<< orphan*/  acm_tty_driver ; 
 int /*<<< orphan*/  FUNC2 (struct acm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_bmCapabilities ; 
 int /*<<< orphan*/  dev_attr_iCountryCodeRelDate ; 
 int /*<<< orphan*/  dev_attr_wCountryCodes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct tty_struct* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct acm* FUNC16 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct usb_interface *intf)
{
	struct acm *acm = FUNC16(intf);
	struct tty_struct *tty;
	int i;

	/* sibling interface is already cleaning up */
	if (!acm)
		return;

	FUNC6(&acm->mutex);
	acm->disconnected = true;
	if (acm->country_codes) {
		FUNC4(&acm->control->dev,
				&dev_attr_wCountryCodes);
		FUNC4(&acm->control->dev,
				&dev_attr_iCountryCodeRelDate);
	}
	FUNC18(&acm->wioctl);
	FUNC4(&acm->control->dev, &dev_attr_bmCapabilities);
	FUNC17(acm->control, NULL);
	FUNC17(acm->data, NULL);
	FUNC7(&acm->mutex);

	tty = FUNC10(&acm->port);
	if (tty) {
		FUNC12(tty);
		FUNC8(tty);
	}

	FUNC0(acm);
	FUNC3(&acm->work);

	FUNC11(acm_tty_driver, acm->minor);

	FUNC15(acm->ctrlurb);
	for (i = 0; i < ACM_NW; i++)
		FUNC15(acm->wb[i].urb);
	for (i = 0; i < acm->rx_buflimit; i++)
		FUNC15(acm->read_urbs[i]);
	FUNC2(acm);
	FUNC14(acm->dev, acm->ctrlsize, acm->ctrl_buffer, acm->ctrl_dma);
	FUNC1(acm);

	FUNC5(acm->notification_buffer);

	if (!acm->combined_interfaces)
		FUNC13(&acm_driver, intf == acm->control ?
					acm->data : acm->control);

	FUNC9(&acm->port);
}