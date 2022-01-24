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
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int* maps; } ;

/* Variables and functions */
 size_t EFUSE_CTRL ; 
 size_t EFUSE_TEST ; 
 size_t SYS_FUNC_EN ; 
 size_t SYS_ISO_CTRL ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u8 bytetemp;
	u8 temp;

	bytetemp = FUNC1(rtlpriv, rtlpriv->cfg->maps[SYS_FUNC_EN] + 1);
	temp = bytetemp | 0x20;
	FUNC2(rtlpriv, rtlpriv->cfg->maps[SYS_FUNC_EN] + 1, temp);

	bytetemp = FUNC1(rtlpriv, rtlpriv->cfg->maps[SYS_ISO_CTRL] + 1);
	temp = bytetemp & 0xFE;
	FUNC2(rtlpriv, rtlpriv->cfg->maps[SYS_ISO_CTRL] + 1, temp);

	bytetemp = FUNC1(rtlpriv, rtlpriv->cfg->maps[EFUSE_TEST] + 3);
	temp = bytetemp | 0x80;
	FUNC2(rtlpriv, rtlpriv->cfg->maps[EFUSE_TEST] + 3, temp);

	FUNC2(rtlpriv, 0x2F8, 0x3);

	FUNC2(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 3, 0x72);

}