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
typedef  int u32 ;
typedef  int u16 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__* maps; } ;

/* Variables and functions */
 size_t EFUSE_CTRL ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct rtl_priv*,scalar_t__) ; 
 int FUNC2 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct ieee80211_hw *hw, u16 _offset, u8 *pbuf)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u32 value32;
	u8 readbyte;
	u16 retry;

	FUNC3(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 1,
		       (_offset & 0xff));
	readbyte = FUNC1(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 2);
	FUNC3(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 2,
		       ((_offset >> 8) & 0x03) | (readbyte & 0xfc));

	readbyte = FUNC1(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 3);
	FUNC3(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 3,
		       (readbyte & 0x7f));

	retry = 0;
	value32 = FUNC2(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL]);
	while (!(((value32 >> 24) & 0xff) & 0x80) && (retry < 10000)) {
		value32 = FUNC2(rtlpriv,
					 rtlpriv->cfg->maps[EFUSE_CTRL]);
		retry++;
	}

	FUNC4(50);
	value32 = FUNC2(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL]);

	*pbuf = (u8) (value32 & 0xff);
}