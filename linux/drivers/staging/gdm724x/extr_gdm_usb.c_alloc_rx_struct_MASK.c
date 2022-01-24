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
struct usb_rx {struct usb_rx* buf; int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_rx*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_rx *FUNC4(void)
{
	struct usb_rx *r = NULL;
	int ret = 0;

	r = FUNC1(sizeof(*r), GFP_KERNEL);
	if (!r) {
		ret = -ENOMEM;
		goto out;
	}

	r->urb = FUNC2(0, GFP_KERNEL);
	r->buf = FUNC1(RX_BUF_SIZE, GFP_KERNEL);
	if (!r->urb || !r->buf) {
		ret = -ENOMEM;
		goto out;
	}
out:

	if (ret < 0) {
		if (r) {
			FUNC3(r->urb);
			FUNC0(r->buf);
			FUNC0(r);
		}
		return NULL;
	}

	return r;
}