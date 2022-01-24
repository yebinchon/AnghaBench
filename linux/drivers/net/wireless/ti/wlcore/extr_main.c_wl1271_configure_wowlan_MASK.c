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
struct wl12xx_rx_filter {int dummy; } ;
struct wl1271 {int dummy; } ;
struct cfg80211_wowlan {int n_patterns; struct cfg80211_pkt_pattern* patterns; scalar_t__ any; } ;
struct cfg80211_pkt_pattern {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FILTER_DROP ; 
 int /*<<< orphan*/  FILTER_SIGNAL ; 
 scalar_t__ FUNC0 (int) ; 
 int WL1271_MAX_RX_FILTERS ; 
 int FUNC1 (struct wl1271*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cfg80211_pkt_pattern*,struct wl12xx_rx_filter**) ; 
 int FUNC3 (struct wl1271*) ; 
 int FUNC4 (struct wl1271*,int,int,struct wl12xx_rx_filter*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl12xx_rx_filter*) ; 
 int FUNC6 (struct cfg80211_pkt_pattern*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct wl1271 *wl,
				   struct cfg80211_wowlan *wow)
{
	int i, ret;

	if (!wow || wow->any || !wow->n_patterns) {
		ret = FUNC1(wl, 0,
							  FILTER_SIGNAL);
		if (ret)
			goto out;

		ret = FUNC3(wl);
		if (ret)
			goto out;

		return 0;
	}

	if (FUNC0(wow->n_patterns > WL1271_MAX_RX_FILTERS))
		return -EINVAL;

	/* Validate all incoming patterns before clearing current FW state */
	for (i = 0; i < wow->n_patterns; i++) {
		ret = FUNC6(&wow->patterns[i]);
		if (ret) {
			FUNC7("Bad wowlan pattern %d", i);
			return ret;
		}
	}

	ret = FUNC1(wl, 0, FILTER_SIGNAL);
	if (ret)
		goto out;

	ret = FUNC3(wl);
	if (ret)
		goto out;

	/* Translate WoWLAN patterns into filters */
	for (i = 0; i < wow->n_patterns; i++) {
		struct cfg80211_pkt_pattern *p;
		struct wl12xx_rx_filter *filter = NULL;

		p = &wow->patterns[i];

		ret = FUNC2(p, &filter);
		if (ret) {
			FUNC7("Failed to create an RX filter from "
				       "wowlan pattern %d", i);
			goto out;
		}

		ret = FUNC4(wl, i, 1, filter);

		FUNC5(filter);
		if (ret)
			goto out;
	}

	ret = FUNC1(wl, 1, FILTER_DROP);

out:
	return ret;
}