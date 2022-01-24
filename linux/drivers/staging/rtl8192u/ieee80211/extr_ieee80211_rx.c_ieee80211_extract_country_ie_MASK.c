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
struct ieee80211_network {scalar_t__ CountryIeLen; int /*<<< orphan*/  CountryIeBuf; } ;
struct ieee80211_info_element {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct ieee80211_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 scalar_t__ FUNC1 (struct ieee80211_device*) ; 
 scalar_t__ FUNC2 (struct ieee80211_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC6(
	struct ieee80211_device *ieee,
	struct ieee80211_info_element *info_element,
	struct ieee80211_network *network,
	u8 *addr2
)
{
	if (FUNC1(ieee)) {
		if (info_element->len != 0) {
			FUNC5(network->CountryIeBuf, info_element->data, info_element->len);
			network->CountryIeLen = info_element->len;

			if (!FUNC0(ieee)) {
				FUNC4(ieee, addr2, info_element->len, info_element->data);
			}
		}

		//
		// 070305, rcnjko: I update country IE watch dog here because
		// some AP (e.g. Cisco 1242) don't include country IE in their
		// probe response frame.
		//
		if (FUNC2(ieee, addr2)) {
			FUNC3(ieee);
		}
	}

}