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
typedef  int u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {scalar_t__* key_len; int /*<<< orphan*/ ** key_buf; int /*<<< orphan*/  pairwise_key; scalar_t__ use_defaultkey; } ;
struct rtl_priv {TYPE_1__ sec; } ;
struct rtl_mac {scalar_t__ opmode; } ;
struct rtl_efuse {int* dev_addr; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
#define  AESCCMP_ENCRYPTION 131 
 int CAM_AES ; 
 int /*<<< orphan*/  CAM_CONFIG_NO_USEDK ; 
 size_t CAM_PAIRWISE_KEY_POSITION ; 
 int CAM_TKIP ; 
 int CAM_WEP104 ; 
 int CAM_WEP40 ; 
 int /*<<< orphan*/  COMP_SEC ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  MAX_KEY_LEN ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 size_t PAIRWISE_KEYIDX ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
#define  TKIP_ENCRYPTION 130 
 size_t TOTAL_CAM_ENTRY ; 
#define  WEP104_ENCRYPTION 129 
#define  WEP40_ENCRYPTION 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int*,size_t,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int) ; 
 size_t FUNC8 (struct ieee80211_hw*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int) ; 
 struct rtl_efuse* FUNC10 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC11 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC12 (struct ieee80211_hw*) ; 

void FUNC13(struct ieee80211_hw *hw, u32 key_index,
		     u8 *p_macaddr, bool is_group, u8 enc_algo,
		     bool is_wepkey, bool clear_all)
{
	struct rtl_priv *rtlpriv = FUNC12(hw);
	struct rtl_mac *mac = FUNC11(FUNC12(hw));
	struct rtl_efuse *rtlefuse = FUNC10(FUNC12(hw));
	u8 *macaddr = p_macaddr;
	u32 entry_id = 0;
	bool is_pairwise = false;

	static u8 cam_const_addr[4][6] = {
		{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
		{0x00, 0x00, 0x00, 0x00, 0x00, 0x01},
		{0x00, 0x00, 0x00, 0x00, 0x00, 0x02},
		{0x00, 0x00, 0x00, 0x00, 0x00, 0x03}
	};
	static u8 cam_const_broad[] = {
		0xff, 0xff, 0xff, 0xff, 0xff, 0xff
	};

	if (clear_all) {
		u8 idx = 0;
		u8 cam_offset = 0;
		u8 clear_number = 5;

		FUNC1(rtlpriv, COMP_SEC, DBG_DMESG, "clear_all\n");

		for (idx = 0; idx < clear_number; idx++) {
			FUNC9(hw, cam_offset + idx);
			FUNC7(hw, cam_offset + idx);

			if (idx < 5) {
				FUNC2(rtlpriv->sec.key_buf[idx], 0,
				       MAX_KEY_LEN);
				rtlpriv->sec.key_len[idx] = 0;
			}
		}

	} else {
		switch (enc_algo) {
		case WEP40_ENCRYPTION:
			enc_algo = CAM_WEP40;
			break;
		case WEP104_ENCRYPTION:
			enc_algo = CAM_WEP104;
			break;
		case TKIP_ENCRYPTION:
			enc_algo = CAM_TKIP;
			break;
		case AESCCMP_ENCRYPTION:
			enc_algo = CAM_AES;
			break;
		default:
			FUNC3("switch case %#x not processed\n",
			       enc_algo);
			enc_algo = CAM_TKIP;
			break;
		}

		if (is_wepkey || rtlpriv->sec.use_defaultkey) {
			macaddr = cam_const_addr[key_index];
			entry_id = key_index;
		} else {
			if (is_group) {
				macaddr = cam_const_broad;
				entry_id = key_index;
			} else {
				if (mac->opmode == NL80211_IFTYPE_AP ||
				    mac->opmode == NL80211_IFTYPE_MESH_POINT) {
					entry_id = FUNC8(hw,
								 p_macaddr);
					if (entry_id >=  TOTAL_CAM_ENTRY) {
						FUNC3("Can not find free hw security cam entry\n");
						return;
					}
				} else {
					entry_id = CAM_PAIRWISE_KEY_POSITION;
				}

				key_index = PAIRWISE_KEYIDX;
				is_pairwise = true;
			}
		}

		if (rtlpriv->sec.key_len[key_index] == 0) {
			FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
				 "delete one entry, entry_id is %d\n",
				 entry_id);
			if (mac->opmode == NL80211_IFTYPE_AP ||
			    mac->opmode == NL80211_IFTYPE_MESH_POINT)
				FUNC5(hw, p_macaddr);
			FUNC6(hw, p_macaddr, entry_id);
		} else {
			FUNC1(rtlpriv, COMP_SEC, DBG_LOUD,
				 "The insert KEY length is %d\n",
				 rtlpriv->sec.key_len[PAIRWISE_KEYIDX]);
			FUNC1(rtlpriv, COMP_SEC, DBG_LOUD,
				 "The insert KEY is %x %x\n",
				 rtlpriv->sec.key_buf[0][0],
				 rtlpriv->sec.key_buf[0][1]);

			FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
				 "add one entry\n");
			if (is_pairwise) {
				FUNC0(rtlpriv, COMP_SEC, DBG_LOUD,
					      "Pairwise Key content",
					      rtlpriv->sec.pairwise_key,
					      rtlpriv->sec.
					      key_len[PAIRWISE_KEYIDX]);

				FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
					 "set Pairwise key\n");

				FUNC4(hw, macaddr, key_index,
						      entry_id, enc_algo,
						      CAM_CONFIG_NO_USEDK,
						      rtlpriv->sec.
						      key_buf[key_index]);
			} else {
				FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
					 "set group key\n");

				if (mac->opmode == NL80211_IFTYPE_ADHOC) {
					FUNC4(hw,
						rtlefuse->dev_addr,
						PAIRWISE_KEYIDX,
						CAM_PAIRWISE_KEY_POSITION,
						enc_algo,
						CAM_CONFIG_NO_USEDK,
						rtlpriv->sec.key_buf
						[entry_id]);
				}

				FUNC4(hw, macaddr, key_index,
						entry_id, enc_algo,
						CAM_CONFIG_NO_USEDK,
						rtlpriv->sec.key_buf[entry_id]);
			}

		}
	}
}