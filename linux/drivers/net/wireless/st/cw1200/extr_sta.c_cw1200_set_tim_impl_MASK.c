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
typedef  int u16 ;
struct wsm_update_ie {int count; int* ies; int length; int /*<<< orphan*/  what; } ;
struct sk_buff {int* data; } ;
struct cw1200_common {int /*<<< orphan*/  vif; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  WSM_UPDATE_IE_BEACON ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*,struct wsm_update_ie*) ; 

__attribute__((used)) static int FUNC6(struct cw1200_common *priv, bool aid0_bit_set)
{
	struct sk_buff *skb;
	struct wsm_update_ie update_ie = {
		.what = WSM_UPDATE_IE_BEACON,
		.count = 1,
	};
	u16 tim_offset, tim_length;

	FUNC3("[AP] mcast: %s.\n", aid0_bit_set ? "ena" : "dis");

	skb = FUNC2(priv->hw, priv->vif,
			&tim_offset, &tim_length);
	if (!skb) {
		if (!FUNC0(priv, true))
			FUNC4(priv);
		return -ENOENT;
	}

	if (tim_offset && tim_length >= 6) {
		/* Ignore DTIM count from mac80211:
		 * firmware handles DTIM internally.
		 */
		skb->data[tim_offset + 2] = 0;

		/* Set/reset aid0 bit */
		if (aid0_bit_set)
			skb->data[tim_offset + 4] |= 1;
		else
			skb->data[tim_offset + 4] &= ~1;
	}

	update_ie.ies = &skb->data[tim_offset];
	update_ie.length = tim_length;
	FUNC5(priv, &update_ie);

	FUNC1(skb);

	return 0;
}