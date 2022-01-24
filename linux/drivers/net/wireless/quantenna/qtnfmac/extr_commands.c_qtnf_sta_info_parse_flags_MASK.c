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
typedef  int u32 ;
struct qlink_sta_info_state {int /*<<< orphan*/  value; int /*<<< orphan*/  mask; } ;
struct nl80211_sta_flag_update {int /*<<< orphan*/  set; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_ASSOCIATED ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_AUTHENTICATED ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_AUTHORIZED ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_MFP ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_TDLS_PEER ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_WME ; 
 int QLINK_STA_FLAG_ASSOCIATED ; 
 int QLINK_STA_FLAG_AUTHENTICATED ; 
 int QLINK_STA_FLAG_AUTHORIZED ; 
 int QLINK_STA_FLAG_MFP ; 
 int QLINK_STA_FLAG_SHORT_PREAMBLE ; 
 int QLINK_STA_FLAG_TDLS_PEER ; 
 int QLINK_STA_FLAG_WME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nl80211_sta_flag_update *dst,
			  const struct qlink_sta_info_state *src)
{
	u32 mask, value;

	dst->mask = 0;
	dst->set = 0;

	mask = FUNC1(src->mask);
	value = FUNC1(src->value);

	if (mask & QLINK_STA_FLAG_AUTHORIZED) {
		dst->mask |= FUNC0(NL80211_STA_FLAG_AUTHORIZED);
		if (value & QLINK_STA_FLAG_AUTHORIZED)
			dst->set |= FUNC0(NL80211_STA_FLAG_AUTHORIZED);
	}

	if (mask & QLINK_STA_FLAG_SHORT_PREAMBLE) {
		dst->mask |= FUNC0(NL80211_STA_FLAG_SHORT_PREAMBLE);
		if (value & QLINK_STA_FLAG_SHORT_PREAMBLE)
			dst->set |= FUNC0(NL80211_STA_FLAG_SHORT_PREAMBLE);
	}

	if (mask & QLINK_STA_FLAG_WME) {
		dst->mask |= FUNC0(NL80211_STA_FLAG_WME);
		if (value & QLINK_STA_FLAG_WME)
			dst->set |= FUNC0(NL80211_STA_FLAG_WME);
	}

	if (mask & QLINK_STA_FLAG_MFP) {
		dst->mask |= FUNC0(NL80211_STA_FLAG_MFP);
		if (value & QLINK_STA_FLAG_MFP)
			dst->set |= FUNC0(NL80211_STA_FLAG_MFP);
	}

	if (mask & QLINK_STA_FLAG_AUTHENTICATED) {
		dst->mask |= FUNC0(NL80211_STA_FLAG_AUTHENTICATED);
		if (value & QLINK_STA_FLAG_AUTHENTICATED)
			dst->set |= FUNC0(NL80211_STA_FLAG_AUTHENTICATED);
	}

	if (mask & QLINK_STA_FLAG_TDLS_PEER) {
		dst->mask |= FUNC0(NL80211_STA_FLAG_TDLS_PEER);
		if (value & QLINK_STA_FLAG_TDLS_PEER)
			dst->set |= FUNC0(NL80211_STA_FLAG_TDLS_PEER);
	}

	if (mask & QLINK_STA_FLAG_ASSOCIATED) {
		dst->mask |= FUNC0(NL80211_STA_FLAG_ASSOCIATED);
		if (value & QLINK_STA_FLAG_ASSOCIATED)
			dst->set |= FUNC0(NL80211_STA_FLAG_ASSOCIATED);
	}
}