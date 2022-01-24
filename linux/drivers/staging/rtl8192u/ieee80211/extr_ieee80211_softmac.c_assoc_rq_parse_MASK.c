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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_info_element {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr2; } ;
struct ieee80211_assoc_request_frame {TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, u8 *dest)
{
	struct ieee80211_assoc_request_frame *a;

	if (skb->len < (sizeof(struct ieee80211_assoc_request_frame) -
		sizeof(struct ieee80211_info_element))) {
		FUNC0("invalid len in auth request:%d \n", skb->len);
		return -1;
	}

	a = (struct ieee80211_assoc_request_frame *)skb->data;

	FUNC1(dest, a->header.addr2, ETH_ALEN);

	return 0;
}