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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; struct pn533_usb_phy* context; } ;
struct sk_buff {int dummy; } ;
struct pn533_usb_phy {int /*<<< orphan*/  priv; TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct pn533_usb_phy *phy = urb->context;
	struct sk_buff *skb = NULL;

	if (!urb->status) {
		skb = FUNC0(urb->actual_length, GFP_ATOMIC);
		if (!skb) {
			FUNC1(&phy->udev->dev, "failed to alloc memory\n");
		} else {
			FUNC3(skb, urb->transfer_buffer,
				     urb->actual_length);
		}
	}

	FUNC2(phy->priv, skb, urb->status);
}