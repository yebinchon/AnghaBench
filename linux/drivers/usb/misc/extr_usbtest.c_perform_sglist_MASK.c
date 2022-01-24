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
struct usb_sg_request {int status; } ;
struct usb_device {scalar_t__ speed; } ;
struct sg_timeout {int /*<<< orphan*/  timer; struct usb_sg_request* req; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*,unsigned int,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTERRUPT_RATE ; 
 int /*<<< orphan*/  SIMPLE_IO_TIMEOUT ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sg_timeout ; 
 struct usb_device* FUNC5 (struct usbtest_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_sg_request*,struct usb_device*,int,int,struct scatterlist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_sg_request*) ; 

__attribute__((used)) static int FUNC9(
	struct usbtest_dev	*tdev,
	unsigned		iterations,
	int			pipe,
	struct usb_sg_request	*req,
	struct scatterlist	*sg,
	int			nents
)
{
	struct usb_device	*udev = FUNC5(tdev);
	int			retval = 0;
	struct sg_timeout	timeout = {
		.req = req,
	};

	FUNC6(&timeout.timer, sg_timeout, 0);

	while (retval == 0 && iterations-- > 0) {
		retval = FUNC7(req, udev, pipe,
				(udev->speed == USB_SPEED_HIGH)
					? (INTERRUPT_RATE << 3)
					: INTERRUPT_RATE,
				sg, nents, 0, GFP_KERNEL);

		if (retval)
			break;
		FUNC3(&timeout.timer, jiffies +
				FUNC4(SIMPLE_IO_TIMEOUT));
		FUNC8(req);
		if (!FUNC1(&timeout.timer))
			retval = -ETIMEDOUT;
		else
			retval = req->status;
		FUNC2(&timeout.timer);

		/* FIXME check resulting data pattern */

		/* FIXME if endpoint halted, clear halt (and log) */
	}

	/* FIXME for unlink or fault handling tests, don't report
	 * failure if retval is as we expected ...
	 */
	if (retval)
		FUNC0(tdev, "perform_sglist failed, "
				"iterations left %d, status %d\n",
				iterations, retval);
	return retval;
}