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
struct wl12xx_null_data_template {int dummy; } ;
struct wl1251 {scalar_t__ bss_type; int /*<<< orphan*/  vif; int /*<<< orphan*/  hw; } ;
struct sk_buff {int len; void* data; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_IBSS ; 
 int /*<<< orphan*/  CMD_NULL_DATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct wl1251 *wl)
{
	struct sk_buff *skb = NULL;
	int size;
	void *ptr;
	int ret = -ENOMEM;

	if (wl->bss_type == BSS_TYPE_IBSS) {
		size = sizeof(struct wl12xx_null_data_template);
		ptr = NULL;
	} else {
		skb = FUNC1(wl->hw, wl->vif, false);
		if (!skb)
			goto out;
		size = skb->len;
		ptr = skb->data;
	}

	ret = FUNC2(wl, CMD_NULL_DATA, ptr, size);

out:
	FUNC0(skb);
	if (ret)
		FUNC3("cmd buld null data failed: %d", ret);

	return ret;
}