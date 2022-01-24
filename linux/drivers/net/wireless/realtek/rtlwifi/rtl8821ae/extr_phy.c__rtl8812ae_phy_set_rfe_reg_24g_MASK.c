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
struct TYPE_2__ {int /*<<< orphan*/  bt_coexistence; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct rtl_hal {int rfe_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BMASKDWORD ; 
 int BMASKRFEINV ; 
 int RA_RFE_INV ; 
 int RA_RFE_PINMUX ; 
 int RB_RFE_INV ; 
 int RB_RFE_PINMUX ; 
 struct rtl_hal* FUNC0 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_hal *rtlhal = FUNC0(FUNC1(hw));
	u8 tmp;

	switch (rtlhal->rfe_type) {
	case 3:
		FUNC3(hw, RA_RFE_PINMUX, BMASKDWORD, 0x54337770);
		FUNC3(hw, RB_RFE_PINMUX, BMASKDWORD, 0x54337770);
		FUNC3(hw, RA_RFE_INV, BMASKRFEINV, 0x010);
		FUNC3(hw, RB_RFE_INV, BMASKRFEINV, 0x010);
		FUNC3(hw, 0x900, 0x00000303, 0x1);
		break;
	case 4:
		FUNC3(hw, RA_RFE_PINMUX, BMASKDWORD, 0x77777777);
		FUNC3(hw, RB_RFE_PINMUX, BMASKDWORD, 0x77777777);
		FUNC3(hw, RA_RFE_INV, BMASKRFEINV, 0x001);
		FUNC3(hw, RB_RFE_INV, BMASKRFEINV, 0x001);
		break;
	case 5:
		FUNC4(rtlpriv, RA_RFE_PINMUX + 2, 0x77);
		FUNC3(hw, RB_RFE_PINMUX, BMASKDWORD, 0x77777777);
		tmp = FUNC2(rtlpriv, RA_RFE_INV + 3);
		FUNC4(rtlpriv, RA_RFE_INV + 3, tmp & ~0x1);
		FUNC3(hw, RB_RFE_INV, BMASKRFEINV, 0x000);
		break;
	case 1:
		if (rtlpriv->btcoexist.bt_coexistence) {
			FUNC3(hw, RA_RFE_PINMUX, 0xffffff, 0x777777);
			FUNC3(hw, RB_RFE_PINMUX, BMASKDWORD,
				      0x77777777);
			FUNC3(hw, RA_RFE_INV, 0x33f00000, 0x000);
			FUNC3(hw, RB_RFE_INV, BMASKRFEINV, 0x000);
			break;
		}
		/* fall through */
	case 0:
	case 2:
	default:
		FUNC3(hw, RA_RFE_PINMUX, BMASKDWORD, 0x77777777);
		FUNC3(hw, RB_RFE_PINMUX, BMASKDWORD, 0x77777777);
		FUNC3(hw, RA_RFE_INV, BMASKRFEINV, 0x000);
		FUNC3(hw, RB_RFE_INV, BMASKRFEINV, 0x000);
		break;
	}
}