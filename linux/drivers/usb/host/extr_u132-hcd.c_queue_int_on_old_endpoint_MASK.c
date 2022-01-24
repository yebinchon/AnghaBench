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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  interval; struct u132* hcpriv; } ;
struct u132_urbq {struct urb* urb; int /*<<< orphan*/  urb_more; } ;
struct u132_udev {int dummy; } ;
struct u132_endp {int delayed; int /*<<< orphan*/  urb_more; scalar_t__ queue_size; int /*<<< orphan*/  queue_last; struct urb** urb_list; scalar_t__ jiffies; } ;
struct u132 {int dummy; } ;

/* Variables and functions */
 size_t ENDP_QUEUE_MASK ; 
 scalar_t__ ENDP_QUEUE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ jiffies ; 
 struct u132_urbq* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct u132 *u132,
	struct u132_udev *udev, struct urb *urb,
	struct usb_device *usb_dev, struct u132_endp *endp, u8 usb_addr,
	u8 usb_endp, u8 address)
{
	urb->hcpriv = u132;
	endp->delayed = 1;
	endp->jiffies = jiffies + FUNC2(urb->interval);
	if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
		endp->urb_list[ENDP_QUEUE_MASK & endp->queue_last++] = urb;
	} else {
		struct u132_urbq *urbq = FUNC0(sizeof(struct u132_urbq),
			GFP_ATOMIC);
		if (urbq == NULL) {
			endp->queue_size -= 1;
			return -ENOMEM;
		} else {
			FUNC1(&urbq->urb_more, &endp->urb_more);
			urbq->urb = urb;
		}
	}
	return 0;
}