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
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct urb {TYPE_1__* dev; scalar_t__ setup_packet; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct urb *urb)
{
	struct usb_ctrlrequest *req;
	__u16 alternate;
	__u16 interface;
	int ret;

	req = (struct usb_ctrlrequest *) urb->setup_packet;
	alternate = FUNC2(req->wValue);
	interface = FUNC2(req->wIndex);

	FUNC4("set_interface: inf %u alt %u\n",
			  interface, alternate);

	ret = FUNC3(urb->dev, interface, alternate);
	if (ret < 0)
		FUNC0(&urb->dev->dev,
			"usb_set_interface error: inf %u alt %u ret %d\n",
			interface, alternate, ret);
	else
		FUNC1(&urb->dev->dev,
			"usb_set_interface done: inf %u alt %u\n",
			interface, alternate);

	return ret;
}