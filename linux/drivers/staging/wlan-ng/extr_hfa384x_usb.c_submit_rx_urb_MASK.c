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
typedef  union hfa384x_usbin {int dummy; } hfa384x_usbin ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct hfa384x {struct sk_buff* rx_urb_skb; int /*<<< orphan*/  usb_work; int /*<<< orphan*/  usb_flags; TYPE_1__* wlandev; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  endp_in; int /*<<< orphan*/  usb; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {TYPE_2__* netdev; int /*<<< orphan*/  hwremoved; } ;

/* Variables and functions */
 int ENOLINK ; 
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  WORK_RX_HALT ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  hfa384x_usbin_callback ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hfa384x *hw, gfp_t memflags)
{
	struct sk_buff *skb;
	int result;

	skb = FUNC0(sizeof(union hfa384x_usbin));
	if (!skb) {
		result = -ENOMEM;
		goto done;
	}

	/* Post the IN urb */
	FUNC6(&hw->rx_urb, hw->usb,
			  hw->endp_in,
			  skb->data, sizeof(union hfa384x_usbin),
			  hfa384x_usbin_callback, hw->wlandev);

	hw->rx_urb_skb = skb;

	result = -ENOLINK;
	if (!hw->wlandev->hwremoved &&
	    !FUNC5(WORK_RX_HALT, &hw->usb_flags)) {
		result = FUNC7(&hw->rx_urb, memflags);

		/* Check whether we need to reset the RX pipe */
		if (result == -EPIPE) {
			FUNC2(hw->wlandev->netdev,
				    "%s rx pipe stalled: requesting reset\n",
				    hw->wlandev->netdev->name);
			if (!FUNC4(WORK_RX_HALT, &hw->usb_flags))
				FUNC3(&hw->usb_work);
		}
	}

	/* Don't leak memory if anything should go wrong */
	if (result != 0) {
		FUNC1(skb);
		hw->rx_urb_skb = NULL;
	}

done:
	return result;
}