#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct urb {int* setup_packet; TYPE_2__* dev; } ;
struct r8a66597_device {int usb_address; size_t root_port; int /*<<< orphan*/  hub_port; int /*<<< orphan*/  address; int /*<<< orphan*/  device_list; scalar_t__ ep_out_toggle; scalar_t__ ep_in_toggle; int /*<<< orphan*/  state; TYPE_2__* udev; } ;
struct r8a66597 {TYPE_1__* root_hub; int /*<<< orphan*/  child_device; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  devpath; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct r8a66597_device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_STATE_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct r8a66597_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct r8a66597_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC9(struct r8a66597 *r8a66597,
				struct urb *urb, u8 addr)
{
	struct r8a66597_device *dev;
	int usb_address = urb->setup_packet[2];	/* urb->pipe is address 0 */

	dev = FUNC6(sizeof(struct r8a66597_device), GFP_ATOMIC);
	if (dev == NULL)
		return -ENOMEM;

	FUNC1(&urb->dev->dev, dev);
	dev->udev = urb->dev;
	dev->address = addr;
	dev->usb_address = usb_address;
	dev->state = USB_STATE_ADDRESS;
	dev->ep_in_toggle = 0;
	dev->ep_out_toggle = 0;
	FUNC0(&dev->device_list);
	FUNC7(&dev->device_list, &r8a66597->child_device);

	FUNC3(r8a66597, urb->dev->devpath,
			&dev->root_port, &dev->hub_port);
	if (!FUNC5(urb->dev->devpath))
		r8a66597->root_hub[dev->root_port].dev = dev;

	FUNC8(r8a66597, dev->address,
		       FUNC4(urb->dev->speed),
		       FUNC2(r8a66597, urb->dev),
		       dev->hub_port, dev->root_port);

	return 0;
}