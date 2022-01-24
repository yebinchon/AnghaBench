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
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;
struct dummy_hcd {int stream_en_ep; TYPE_1__* dum; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 struct dummy_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd, struct usb_device *udev,
	struct usb_host_endpoint **eps, unsigned int num_eps,
	gfp_t mem_flags)
{
	struct dummy_hcd *dum_hcd = FUNC1(hcd);
	unsigned long flags;
	int ret;
	unsigned int index;
	unsigned int i;

	FUNC3(&dum_hcd->dum->lock, flags);
	for (i = 0; i < num_eps; i++) {
		index = FUNC0(&eps[i]->desc);
		if (!((1 << index) & dum_hcd->stream_en_ep)) {
			ret = -EINVAL;
			goto out;
		}
	}

	for (i = 0; i < num_eps; i++) {
		index = FUNC0(&eps[i]->desc);
		dum_hcd->stream_en_ep &= ~(1 << index);
		FUNC2(dum_hcd,
				FUNC5(&eps[i]->desc), 0);
	}
	ret = 0;
out:
	FUNC4(&dum_hcd->dum->lock, flags);
	return ret;
}