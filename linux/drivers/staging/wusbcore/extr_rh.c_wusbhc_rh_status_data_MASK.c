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
struct wusbhc {int ports_max; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {scalar_t__ change; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 struct wusbhc* FUNC2 (struct usb_hcd*) ; 
 TYPE_1__* FUNC3 (struct wusbhc*,size_t) ; 

int FUNC4(struct usb_hcd *usb_hcd, char *_buf)
{
	struct wusbhc *wusbhc = FUNC2(usb_hcd);
	size_t cnt, size, bits_set = 0;

	/* WE DON'T LOCK, see comment */
	/* round up to bytes.  Hub bit is bit 0 so add 1. */
	size = FUNC0(wusbhc->ports_max + 1, 8);

	/* clear the output buffer. */
	FUNC1(_buf, 0, size);
	/* set the bit for each changed port. */
	for (cnt = 0; cnt < wusbhc->ports_max; cnt++) {

		if (FUNC3(wusbhc, cnt)->change) {
			const int bitpos = cnt+1;

			_buf[bitpos/8] |= (1 << (bitpos % 8));
			bits_set++;
		}
	}

	return bits_set ? size : 0;
}