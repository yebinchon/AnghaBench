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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {int transfer_buffer_length; int status; int /*<<< orphan*/  pipe; struct usb_device* dev; int /*<<< orphan*/  transfer_flags; struct completion* context; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SIMPLE_IO_TIMEOUT ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usbtest_dev*,struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct completion*,unsigned long) ; 

__attribute__((used)) static int FUNC10(
	struct usbtest_dev	*tdev,
	struct urb		*urb,
	int			iterations,
	int			vary,
	int			expected,
	const char		*label
)
{
	struct usb_device	*udev = urb->dev;
	int			max = urb->transfer_buffer_length;
	struct completion	completion;
	int			retval = 0;
	unsigned long		expire;

	urb->context = &completion;
	while (retval == 0 && iterations-- > 0) {
		FUNC1(&completion);
		if (FUNC7(urb->pipe)) {
			FUNC4(urb);
			urb->transfer_flags |= URB_ZERO_PACKET;
		}
		retval = FUNC8(urb, GFP_KERNEL);
		if (retval != 0)
			break;

		expire = FUNC2(SIMPLE_IO_TIMEOUT);
		if (!FUNC9(&completion, expire)) {
			FUNC5(urb);
			retval = (urb->status == -ENOENT ?
				  -ETIMEDOUT : urb->status);
		} else {
			retval = urb->status;
		}

		urb->dev = udev;
		if (retval == 0 && FUNC6(urb->pipe))
			retval = FUNC3(tdev, urb);

		if (vary) {
			int	len = urb->transfer_buffer_length;

			len += vary;
			len %= max;
			if (len == 0)
				len = (vary < max) ? vary : max;
			urb->transfer_buffer_length = len;
		}

		/* FIXME if endpoint halted, clear halt (and log) */
	}
	urb->transfer_buffer_length = max;

	if (expected != retval)
		FUNC0(&udev->dev,
			"%s failed, iterations left %d, status %d (not %d)\n",
				label, iterations, retval, expected);
	return retval;
}