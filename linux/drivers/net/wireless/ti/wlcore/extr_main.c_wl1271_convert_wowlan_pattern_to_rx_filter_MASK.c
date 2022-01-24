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
typedef  int u8 ;
typedef  int u16 ;
struct wl12xx_rx_filter {int /*<<< orphan*/  action; } ;
struct cfg80211_pkt_pattern {int pattern_len; int /*<<< orphan*/ * pattern; scalar_t__ mask; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FILTER_SIGNAL ; 
 int WL1271_RX_FILTER_ETH_HEADER_SIZE ; 
 int WL1271_RX_FILTER_FLAG_ETHERNET_HEADER ; 
 int WL1271_RX_FILTER_FLAG_IP_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 struct wl12xx_rx_filter* FUNC1 () ; 
 int FUNC2 (struct wl12xx_rx_filter*,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wl12xx_rx_filter*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct cfg80211_pkt_pattern *p,
					   struct wl12xx_rx_filter **f)
{
	int i, j, ret = 0;
	struct wl12xx_rx_filter *filter;
	u16 offset;
	u8 flags, len;

	filter = FUNC1();
	if (!filter) {
		FUNC4("Failed to alloc rx filter");
		ret = -ENOMEM;
		goto err;
	}

	i = 0;
	while (i < p->pattern_len) {
		if (!FUNC0(i, (unsigned long *)p->mask)) {
			i++;
			continue;
		}

		for (j = i; j < p->pattern_len; j++) {
			if (!FUNC0(j, (unsigned long *)p->mask))
				break;

			if (i < WL1271_RX_FILTER_ETH_HEADER_SIZE &&
			    j >= WL1271_RX_FILTER_ETH_HEADER_SIZE)
				break;
		}

		if (i < WL1271_RX_FILTER_ETH_HEADER_SIZE) {
			offset = i;
			flags = WL1271_RX_FILTER_FLAG_ETHERNET_HEADER;
		} else {
			offset = i - WL1271_RX_FILTER_ETH_HEADER_SIZE;
			flags = WL1271_RX_FILTER_FLAG_IP_HEADER;
		}

		len = j - i;

		ret = FUNC2(filter,
						   offset,
						   flags,
						   &p->pattern[i], len);
		if (ret)
			goto err;

		i = j;
	}

	filter->action = FILTER_SIGNAL;

	*f = filter;
	return 0;

err:
	FUNC3(filter);
	*f = NULL;

	return ret;
}