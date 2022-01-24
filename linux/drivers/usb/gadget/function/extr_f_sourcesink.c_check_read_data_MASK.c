#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_request {unsigned int actual; int /*<<< orphan*/ * buf; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_5__ {TYPE_3__* config; } ;
struct f_sourcesink {int pattern; TYPE_4__* out_ep; TYPE_1__ function; } ;
struct TYPE_8__ {TYPE_2__* desc; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  wMaxPacketSize; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC3(struct f_sourcesink *ss, struct usb_request *req)
{
	unsigned		i;
	u8			*buf = req->buf;
	struct usb_composite_dev *cdev = ss->function.config->cdev;
	int max_packet_size = FUNC1(ss->out_ep->desc->wMaxPacketSize);

	if (ss->pattern == 2)
		return 0;

	for (i = 0; i < req->actual; i++, buf++) {
		switch (ss->pattern) {

		/* all-zeroes has no synchronization issues */
		case 0:
			if (*buf == 0)
				continue;
			break;

		/* "mod63" stays in sync with short-terminated transfers,
		 * OR otherwise when host and gadget agree on how large
		 * each usb transfer request should be.  Resync is done
		 * with set_interface or set_config.  (We *WANT* it to
		 * get quickly out of sync if controllers or their drivers
		 * stutter for any reason, including buffer duplication...)
		 */
		case 1:
			if (*buf == (u8)((i % max_packet_size) % 63))
				continue;
			break;
		}
		FUNC0(cdev, "bad OUT byte, buf[%d] = %d\n", i, *buf);
		FUNC2(ss->out_ep);
		return -EINVAL;
	}
	return 0;
}