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
typedef  int u16 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct rtl_efuse {int** efuse_map; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int* maps; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_EFUSE ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 size_t EFUSE_HWSET_MAX_SIZE ; 
 size_t EFUSE_INIT_MAP ; 
 size_t EFUSE_MODIFY_MAP ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 struct rtl_efuse* FUNC8 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 

bool FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_efuse *rtlefuse = FUNC8(FUNC9(hw));
	u16 i, offset, base;
	u8 word_en = 0x0F;
	u8 first_pg = false;

	FUNC2(rtlpriv, COMP_EFUSE, DBG_LOUD, "\n");

	if (!FUNC6(hw)) {
		FUNC5(hw, &rtlefuse->efuse_map[EFUSE_INIT_MAP][0]);
		FUNC7(&rtlefuse->efuse_map[EFUSE_MODIFY_MAP][0],
		       &rtlefuse->efuse_map[EFUSE_INIT_MAP][0],
		       rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE]);

		FUNC2(rtlpriv, COMP_EFUSE, DBG_LOUD,
			 "efuse out of capacity!!\n");
		return false;
	}
	FUNC4(hw, true, true);

	for (offset = 0; offset < 16; offset++) {

		word_en = 0x0F;
		base = offset * 8;

		for (i = 0; i < 8; i++) {
			if (first_pg) {
				word_en &= ~(FUNC0(i / 2));

				rtlefuse->efuse_map[EFUSE_INIT_MAP][base + i] =
				    rtlefuse->efuse_map[EFUSE_MODIFY_MAP][base + i];
			} else {

				if (rtlefuse->efuse_map[EFUSE_INIT_MAP][base + i] !=
				    rtlefuse->efuse_map[EFUSE_MODIFY_MAP][base + i]) {
					word_en &= ~(FUNC0(i / 2));

					rtlefuse->efuse_map[EFUSE_INIT_MAP][base + i] =
					    rtlefuse->efuse_map[EFUSE_MODIFY_MAP][base + i];
				}
			}
		}

		if (word_en != 0x0F) {
			u8 tmpdata[8];

			FUNC7(tmpdata,
			       &rtlefuse->efuse_map[EFUSE_MODIFY_MAP][base],
			       8);
			FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
				      "U-efuse\n", tmpdata, 8);

			if (!FUNC3(hw, (u8) offset, word_en,
						   tmpdata)) {
				FUNC2(rtlpriv, COMP_ERR, DBG_WARNING,
					 "PG section(%#x) fail!!\n", offset);
				break;
			}
		}
	}

	FUNC4(hw, true, false);
	FUNC5(hw, &rtlefuse->efuse_map[EFUSE_INIT_MAP][0]);

	FUNC7(&rtlefuse->efuse_map[EFUSE_MODIFY_MAP][0],
	       &rtlefuse->efuse_map[EFUSE_INIT_MAP][0],
	       rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE]);

	FUNC2(rtlpriv, COMP_EFUSE, DBG_LOUD, "\n");
	return true;
}