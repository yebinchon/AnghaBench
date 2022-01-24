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
struct wlandevice {struct hfa384x* priv; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct hfa384x_inf_frame {int dummy; } ;
struct hfa384x {int /*<<< orphan*/  link_bh; int /*<<< orphan*/  authq; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hfa384x_inf_frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct wlandevice *wlandev,
				  struct hfa384x_inf_frame *inf)
{
	struct hfa384x *hw = wlandev->priv;
	struct sk_buff *skb;

	skb = FUNC0(sizeof(*inf));
	if (skb) {
		FUNC3(skb, sizeof(*inf));
		FUNC1(skb->data, inf, sizeof(*inf));
		FUNC4(&hw->authq, skb);
		FUNC2(&hw->link_bh);
	}
}