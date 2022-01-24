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
typedef  unsigned int u32 ;
struct usb_device {unsigned int devnum; scalar_t__ speed; } ;
struct fotg210_iso_stream {int usecs; int highspeed; long bandwidth; int bEndpointAddress; unsigned int interval; unsigned int maxp; struct usb_device* udev; void* buf2; void* buf1; void* buf0; } ;
struct fotg210_hcd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int USB_DIR_IN ; 
 scalar_t__ USB_SPEED_FULL ; 
 void* FUNC2 (struct fotg210_hcd*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int,unsigned int) ; 
 unsigned int FUNC6 (struct usb_device*,int,int) ; 
 unsigned int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct fotg210_hcd *fotg210,
		struct fotg210_iso_stream *stream, struct usb_device *dev,
		int pipe, unsigned interval)
{
	u32 buf1;
	unsigned epnum, maxp;
	int is_input;
	long bandwidth;
	unsigned multi;

	/*
	 * this might be a "high bandwidth" highspeed endpoint,
	 * as encoded in the ep descriptor's wMaxPacket field
	 */
	epnum = FUNC7(pipe);
	is_input = FUNC8(pipe) ? USB_DIR_IN : 0;
	maxp = FUNC6(dev, pipe, !is_input);
	if (is_input)
		buf1 = (1 << 11);
	else
		buf1 = 0;

	maxp = FUNC4(maxp);
	multi = FUNC3(maxp);
	buf1 |= maxp;
	maxp *= multi;

	stream->buf0 = FUNC2(fotg210, (epnum << 8) | dev->devnum);
	stream->buf1 = FUNC2(fotg210, buf1);
	stream->buf2 = FUNC2(fotg210, multi);

	/* usbfs wants to report the average usecs per frame tied up
	 * when transfers on this endpoint are scheduled ...
	 */
	if (dev->speed == USB_SPEED_FULL) {
		interval <<= 3;
		stream->usecs = FUNC1(FUNC5(dev->speed,
				is_input, 1, maxp));
		stream->usecs /= 8;
	} else {
		stream->highspeed = 1;
		stream->usecs = FUNC0(maxp);
	}
	bandwidth = stream->usecs * 8;
	bandwidth /= interval;

	stream->bandwidth = bandwidth;
	stream->udev = dev;
	stream->bEndpointAddress = is_input | epnum;
	stream->interval = interval;
	stream->maxp = maxp;
}