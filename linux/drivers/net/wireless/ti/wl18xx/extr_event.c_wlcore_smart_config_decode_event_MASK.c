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
typedef  scalar_t__ u8 ;
struct wl1271 {TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WLCORE_VENDOR_ATTR_PSK ; 
 int /*<<< orphan*/  WLCORE_VENDOR_ATTR_SSID ; 
 int /*<<< orphan*/  WLCORE_VENDOR_EVENT_SC_DECODE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl,
					    u8 ssid_len, u8 *ssid,
					    u8 pwd_len, u8 *pwd)
{
	struct sk_buff *skb;

	FUNC4(DEBUG_EVENT, "SMART_CONFIG_DECODE_EVENT_ID");
	FUNC5(DEBUG_EVENT, "SSID:", ssid, ssid_len);

	skb = FUNC1(wl->hw->wiphy, NULL,
					  ssid_len + pwd_len + 20,
					  WLCORE_VENDOR_EVENT_SC_DECODE,
					  GFP_KERNEL);

	if (FUNC3(skb, WLCORE_VENDOR_ATTR_SSID, ssid_len, ssid) ||
	    FUNC3(skb, WLCORE_VENDOR_ATTR_PSK, pwd_len, pwd)) {
		FUNC2(skb);
		return -EMSGSIZE;
	}
	FUNC0(skb, GFP_KERNEL);
	return 0;
}