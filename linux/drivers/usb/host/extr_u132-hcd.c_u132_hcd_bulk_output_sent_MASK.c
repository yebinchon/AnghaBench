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
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int /*<<< orphan*/  unlinked; } ;
struct u132_ring {int dummy; } ;
struct u132_endp {size_t usb_addr; int toggle_bits; struct u132_ring* ring; scalar_t__ dequeueing; struct u132* u132; } ;
struct u132 {int going; int /*<<< orphan*/  scheduler_lock; TYPE_2__* platform_dev; TYPE_1__* addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct u132*,struct u132_ring*,struct u132_endp*,struct urb*,int /*<<< orphan*/ ,int,void (*) (void*,struct urb*,int /*<<< orphan*/ *,int,int,int,int,int,int,int,int,int)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct u132*,struct u132_endp*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct u132*,struct u132_endp*,struct urb*,int) ; 

__attribute__((used)) static void FUNC6(void *data, struct urb *urb, u8 *buf,
	int len, int toggle_bits, int error_count, int condition_code,
	int repeat_number, int halted, int skipped, int actual, int non_null)
{
	struct u132_endp *endp = data;
	struct u132 *u132 = endp->u132;
	u8 address = u132->addr[endp->usb_addr].address;
	FUNC2(&u132->scheduler_lock);
	if (u132->going > 1) {
		FUNC0(&u132->platform_dev->dev, "device has been removed %d\n"
			, u132->going);
		FUNC3(&u132->scheduler_lock);
		FUNC4(u132, endp, urb, -ENODEV);
		return;
	} else if (endp->dequeueing) {
		endp->dequeueing = 0;
		FUNC3(&u132->scheduler_lock);
		FUNC5(u132, endp, urb, -EINTR);
		return;
	} else if (u132->going > 0) {
		FUNC0(&u132->platform_dev->dev, "device is being removed "
				"urb=%p\n", urb);
		FUNC3(&u132->scheduler_lock);
		FUNC5(u132, endp, urb, -ENODEV);
		return;
	} else if (!urb->unlinked) {
		struct u132_ring *ring = endp->ring;
		urb->actual_length += len;
		endp->toggle_bits = toggle_bits;
		if (urb->transfer_buffer_length > urb->actual_length) {
			int retval;
			FUNC3(&u132->scheduler_lock);
			retval = FUNC1(u132, ring, endp, urb, address,
				endp->toggle_bits, u132_hcd_bulk_output_sent);
			if (retval != 0)
				FUNC5(u132, endp, urb, retval);
			return;
		} else {
			FUNC3(&u132->scheduler_lock);
			FUNC5(u132, endp, urb, 0);
			return;
		}
	} else {
		FUNC0(&u132->platform_dev->dev, "CALLBACK called urb=%p "
				"unlinked=%d\n", urb, urb->unlinked);
		FUNC3(&u132->scheduler_lock);
		FUNC5(u132, endp, urb, 0);
		return;
	}
}