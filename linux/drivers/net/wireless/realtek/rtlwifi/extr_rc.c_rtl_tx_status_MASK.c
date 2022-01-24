#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {scalar_t__ protocol; } ;
struct rtl_sta_info {TYPE_3__* tids; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int /*<<< orphan*/  hw; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_4__ {scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {int /*<<< orphan*/  agg_state; } ;
struct TYPE_6__ {TYPE_2__ agg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PAE ; 
 int /*<<< orphan*/  RTL_AGG_PROGRESS ; 
 scalar_t__ FUNC0 (struct rtl_priv*,struct rtl_sta_info*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sta*,size_t,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct ieee80211_hdr* FUNC9 (struct sk_buff*) ; 
 size_t FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sk_buff*,int,int) ; 
 struct rtl_mac* FUNC12 (struct rtl_priv*) ; 

__attribute__((used)) static void FUNC13(void *ppriv,
			  struct ieee80211_supported_band *sband,
			  struct ieee80211_sta *sta, void *priv_sta,
			  struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = ppriv;
	struct rtl_mac *mac = FUNC12(rtlpriv);
	struct ieee80211_hdr *hdr = FUNC9(skb);
	__le16 fc = FUNC8(skb);
	struct rtl_sta_info *sta_entry;

	if (!priv_sta || !FUNC3(fc))
		return;

	if (FUNC11(mac->hw, skb, true, true))
		return;

	if (FUNC7(FUNC2(hdr)) ||
	    FUNC6(FUNC2(hdr)))
		return;

	if (sta) {
		/* Check if aggregation has to be enabled for this tid */
		sta_entry = (struct rtl_sta_info *)sta->drv_priv;
		if (sta->ht_cap.ht_supported &&
		    !(skb->protocol == FUNC1(ETH_P_PAE))) {
			if (FUNC4(fc)) {
				u8 tid = FUNC10(skb);

				if (FUNC0(rtlpriv, sta_entry,
						       tid)) {
					sta_entry->tids[tid].agg.agg_state =
						RTL_AGG_PROGRESS;
					FUNC5(sta, tid,
								      5000);
				}
			}
		}
	}
}