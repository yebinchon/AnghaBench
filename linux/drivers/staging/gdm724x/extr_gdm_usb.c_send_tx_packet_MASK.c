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
typedef  int u32 ;
struct usb_tx {int /*<<< orphan*/  urb; int /*<<< orphan*/  buf; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  gdm_usb_send_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_tx*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_device *usbdev, struct usb_tx *t, u32 len)
{
	int ret = 0;

	if (!(len % 512))
		len++;

	FUNC1(t->urb,
			  usbdev,
			  FUNC3(usbdev, 2),
			  t->buf,
			  len,
			  gdm_usb_send_complete,
			  t);

	ret = FUNC4(t->urb, GFP_ATOMIC);

	if (ret)
		FUNC0(&usbdev->dev, "usb_submit_urb failed: %d\n",
			ret);

	FUNC2(usbdev);

	return ret;
}