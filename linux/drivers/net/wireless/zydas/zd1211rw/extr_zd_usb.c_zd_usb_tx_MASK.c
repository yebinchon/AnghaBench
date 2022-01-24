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
struct zd_usb_tx {int /*<<< orphan*/  submitted_skbs; int /*<<< orphan*/  submitted; int /*<<< orphan*/  enabled; } ;
struct zd_usb {struct zd_usb_tx tx; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_tx_info {void** rate_driver_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EP_DATA_OUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct urb*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_usb*) ; 
 int /*<<< orphan*/  tx_urb_complete ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 
 int /*<<< orphan*/  FUNC13 (struct zd_usb*) ; 
 struct usb_device* FUNC14 (struct zd_usb*) ; 

int FUNC15(struct zd_usb *usb, struct sk_buff *skb)
{
	int r;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct usb_device *udev = FUNC14(usb);
	struct urb *urb;
	struct zd_usb_tx *tx = &usb->tx;

	if (!FUNC1(&tx->enabled)) {
		r = -ENOENT;
		goto out;
	}

	urb = FUNC6(0, GFP_ATOMIC);
	if (!urb) {
		r = -ENOMEM;
		goto out;
	}

	FUNC8(urb, udev, FUNC10(udev, EP_DATA_OUT),
		          skb->data, skb->len, tx_urb_complete, skb);

	info->rate_driver_data[1] = (void *)jiffies;
	FUNC3(&tx->submitted_skbs, skb);
	FUNC7(urb, &tx->submitted);

	r = FUNC11(urb, GFP_ATOMIC);
	if (r) {
		FUNC2(FUNC13(usb), "error submit urb %p %d\n", urb, r);
		FUNC12(urb);
		FUNC4(skb, &tx->submitted_skbs);
		goto error;
	}
	FUNC5(usb);
	return 0;
error:
	FUNC9(urb);
out:
	return r;
}