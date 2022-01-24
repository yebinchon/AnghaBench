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
struct usbtest_dev {int dummy; } ;
struct urb {int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*,int,int) ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  USB_ENDPOINT_HALT ; 
 int /*<<< orphan*/  USB_RECIP_ENDPOINT ; 
 int /*<<< orphan*/  USB_REQ_SET_FEATURE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usbtest_dev*,int,struct urb*) ; 
 int FUNC5 (struct usbtest_dev*,int,struct urb*) ; 

__attribute__((used)) static int FUNC6(struct usbtest_dev *tdev, int ep, struct urb *urb)
{
	int	retval;

	/* shouldn't look or act halted now */
	retval = FUNC5(tdev, ep, urb);
	if (retval < 0)
		return retval;

	/* set halt (protocol test only), verify it worked */
	retval = FUNC2(urb->dev, FUNC3(urb->dev, 0),
			USB_REQ_SET_FEATURE, USB_RECIP_ENDPOINT,
			USB_ENDPOINT_HALT, ep,
			NULL, 0, USB_CTRL_SET_TIMEOUT);
	if (retval < 0) {
		FUNC0(tdev, "ep %02x couldn't set halt, %d\n", ep, retval);
		return retval;
	}
	retval = FUNC4(tdev, ep, urb);
	if (retval < 0) {
		int ret;

		/* clear halt anyways, else further tests will fail */
		ret = FUNC1(urb->dev, urb->pipe);
		if (ret)
			FUNC0(tdev, "ep %02x couldn't clear halt, %d\n",
			      ep, ret);

		return retval;
	}

	/* clear halt (tests API + protocol), verify it worked */
	retval = FUNC1(urb->dev, urb->pipe);
	if (retval < 0) {
		FUNC0(tdev, "ep %02x couldn't clear halt, %d\n", ep, retval);
		return retval;
	}
	retval = FUNC5(tdev, ep, urb);
	if (retval < 0)
		return retval;

	/* NOTE:  could also verify SET_INTERFACE clear halts ... */

	return 0;
}