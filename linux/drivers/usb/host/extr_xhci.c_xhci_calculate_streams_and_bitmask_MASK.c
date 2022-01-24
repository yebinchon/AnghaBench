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
typedef  unsigned int u32 ;
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_1__ desc; int /*<<< orphan*/  ss_ep_comp; } ;
struct usb_device {int /*<<< orphan*/  slot_id; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xhci_hcd*,struct usb_device*,struct usb_host_endpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct xhci_hcd *xhci,
		struct usb_device *udev,
		struct usb_host_endpoint **eps, unsigned int num_eps,
		unsigned int *num_streams, u32 *changed_ep_bitmask)
{
	unsigned int max_streams;
	unsigned int endpoint_flag;
	int i;
	int ret;

	for (i = 0; i < num_eps; i++) {
		ret = FUNC1(xhci, udev,
				eps[i], udev->slot_id);
		if (ret < 0)
			return ret;

		max_streams = FUNC0(&eps[i]->ss_ep_comp);
		if (max_streams < (*num_streams - 1)) {
			FUNC2(xhci, "Ep 0x%x only supports %u stream IDs.\n",
					eps[i]->desc.bEndpointAddress,
					max_streams);
			*num_streams = max_streams+1;
		}

		endpoint_flag = FUNC3(&eps[i]->desc);
		if (*changed_ep_bitmask & endpoint_flag)
			return -EINVAL;
		*changed_ep_bitmask |= endpoint_flag;
	}
	return 0;
}