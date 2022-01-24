#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; int /*<<< orphan*/  ss_ep_comp; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;
struct dummy_hcd {int stream_en_ep; TYPE_1__* dum; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy_hcd*) ; 
 unsigned int FUNC2 (TYPE_2__*) ; 
 struct dummy_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct dummy_hcd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd, struct usb_device *udev,
	struct usb_host_endpoint **eps, unsigned int num_eps,
	unsigned int num_streams, gfp_t mem_flags)
{
	struct dummy_hcd *dum_hcd = FUNC3(hcd);
	unsigned long flags;
	int max_stream;
	int ret_streams = num_streams;
	unsigned int index;
	unsigned int i;

	if (!num_eps)
		return -EINVAL;

	FUNC5(&dum_hcd->dum->lock, flags);
	for (i = 0; i < num_eps; i++) {
		index = FUNC2(&eps[i]->desc);
		if ((1 << index) & dum_hcd->stream_en_ep) {
			ret_streams = -EINVAL;
			goto out;
		}
		max_stream = FUNC8(&eps[i]->ss_ep_comp);
		if (!max_stream) {
			ret_streams = -EINVAL;
			goto out;
		}
		if (max_stream < ret_streams) {
			FUNC0(FUNC1(dum_hcd), "Ep 0x%x only supports %u "
					"stream IDs.\n",
					eps[i]->desc.bEndpointAddress,
					max_stream);
			ret_streams = max_stream;
		}
	}

	for (i = 0; i < num_eps; i++) {
		index = FUNC2(&eps[i]->desc);
		dum_hcd->stream_en_ep |= 1 << index;
		FUNC4(dum_hcd,
				FUNC7(&eps[i]->desc), ret_streams);
	}
out:
	FUNC6(&dum_hcd->dum->lock, flags);
	return ret_streams;
}