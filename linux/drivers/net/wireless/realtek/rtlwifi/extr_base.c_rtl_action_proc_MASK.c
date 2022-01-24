#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct TYPE_10__ {int /*<<< orphan*/  rx_agg_state; } ;
struct rtl_tid_data {TYPE_5__ agg; } ;
struct rtl_sta_info {struct rtl_tid_data* tids; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int /*<<< orphan*/  act_scanning; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  capab; } ;
struct TYPE_7__ {TYPE_1__ addba_req; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct TYPE_9__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr3; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
#define  ACT_ADDBAREQ 131 
#define  ACT_ADDBARSP 130 
#define  ACT_CAT_BA 129 
#define  ACT_DELBA 128 
 int /*<<< orphan*/  COMP_INIT ; 
 int COMP_RECV ; 
 int COMP_SEND ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int IEEE80211_ADDBA_PARAM_TID_MASK ; 
 int MAC80211_3ADDR_LEN ; 
 int MAX_TID_COUNT ; 
 int /*<<< orphan*/  RTL_RX_AGG_START ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct ieee80211_hdr*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct ieee80211_sta* FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct ieee80211_hdr* FUNC9 (struct sk_buff*) ; 
 struct rtl_mac* FUNC10 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC11 (struct ieee80211_hw*) ; 

bool FUNC12(struct ieee80211_hw *hw, struct sk_buff *skb, u8 is_tx)
{
	struct rtl_mac *mac = FUNC10(FUNC11(hw));
	struct ieee80211_hdr *hdr = FUNC9(skb);
	struct rtl_priv *rtlpriv = FUNC11(hw);
	__le16 fc = FUNC8(skb);
	u8 *act = (u8 *)(((u8 *)skb->data + MAC80211_3ADDR_LEN));
	u8 category;

	if (!FUNC2(fc))
		return true;

	category = *act;
	act++;
	switch (category) {
	case ACT_CAT_BA:
		switch (*act) {
		case ACT_ADDBAREQ:
			if (mac->act_scanning)
				return false;

			FUNC1(rtlpriv, (COMP_SEND | COMP_RECV), DBG_DMESG,
				"%s ACT_ADDBAREQ From :%pM\n",
				is_tx ? "Tx" : "Rx", hdr->addr2);
			FUNC0(rtlpriv, COMP_INIT, DBG_DMESG, "req\n",
				skb->data, skb->len);
			if (!is_tx) {
				struct ieee80211_sta *sta = NULL;
				struct rtl_sta_info *sta_entry = NULL;
				struct rtl_tid_data *tid_data;
				struct ieee80211_mgmt *mgmt = (void *)skb->data;
				u16 capab = 0, tid = 0;

				FUNC5();
				sta = FUNC7(hw, hdr->addr3);
				if (sta == NULL) {
					FUNC1(rtlpriv, COMP_SEND | COMP_RECV,
						 DBG_DMESG, "sta is NULL\n");
					FUNC6();
					return true;
				}

				sta_entry =
					(struct rtl_sta_info *)sta->drv_priv;
				if (!sta_entry) {
					FUNC6();
					return true;
				}
				capab =
				  FUNC3(mgmt->u.action.u.addba_req.capab);
				tid = (capab &
				       IEEE80211_ADDBA_PARAM_TID_MASK) >> 2;
				if (tid >= MAX_TID_COUNT) {
					FUNC6();
					return true;
				}
				tid_data = &sta_entry->tids[tid];
				if (tid_data->agg.rx_agg_state ==
				    RTL_RX_AGG_START)
					FUNC4(hw, hdr, tid);
				FUNC6();
			}
			break;
		case ACT_ADDBARSP:
			FUNC1(rtlpriv, (COMP_SEND | COMP_RECV), DBG_DMESG,
				 "%s ACT_ADDBARSP From :%pM\n",
				  is_tx ? "Tx" : "Rx", hdr->addr2);
			break;
		case ACT_DELBA:
			FUNC1(rtlpriv, (COMP_SEND | COMP_RECV), DBG_DMESG,
				 "ACT_ADDBADEL From :%pM\n", hdr->addr2);
			break;
		}
		break;
	default:
		break;
	}

	return true;
}