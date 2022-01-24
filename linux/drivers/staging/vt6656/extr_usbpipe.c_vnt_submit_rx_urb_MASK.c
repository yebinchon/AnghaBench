#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnt_rcb {int in_use; int /*<<< orphan*/  skb; struct urb* urb; } ;
struct vnt_private {TYPE_1__* usb; } ;
struct urb {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_TOTAL_SIZE_WITH_ALL_HEADERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnt_rcb*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnt_submit_rx_urb_complete ; 

int FUNC6(struct vnt_private *priv, struct vnt_rcb *rcb)
{
	int ret = 0;
	struct urb *urb = rcb->urb;

	if (!rcb->skb) {
		FUNC0(&priv->usb->dev, "rcb->skb is null\n");
		ret = -EINVAL;
		goto end;
	}

	FUNC3(urb,
			  priv->usb,
			  FUNC4(priv->usb, 2),
			  FUNC1(rcb->skb, FUNC2(rcb->skb)),
			  MAX_TOTAL_SIZE_WITH_ALL_HEADERS,
			  vnt_submit_rx_urb_complete,
			  rcb);

	ret = FUNC5(urb, GFP_ATOMIC);
	if (ret) {
		FUNC0(&priv->usb->dev, "Submit Rx URB failed %d\n", ret);
		goto end;
	}

	rcb->in_use = true;

end:
	return ret;
}