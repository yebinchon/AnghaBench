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
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__* maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_EFUSE ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 size_t EFUSE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw, u16 addr, u8 data)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u8 tmpidx = 0;

	FUNC0(rtlpriv, COMP_EFUSE, DBG_LOUD,
		 "Addr = %x Data=%x\n", addr, data);

	FUNC3(rtlpriv,
		       rtlpriv->cfg->maps[EFUSE_CTRL] + 1, (u8) (addr & 0xff));
	FUNC3(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 2,
		       (FUNC2(rtlpriv,
			 rtlpriv->cfg->maps[EFUSE_CTRL] +
			 2) & 0xFC) | (u8) ((addr >> 8) & 0x03));

	FUNC3(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL], data);
	FUNC3(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 3, 0xF2);

	while ((0x80 & FUNC2(rtlpriv,
				     rtlpriv->cfg->maps[EFUSE_CTRL] + 3))
	       && (tmpidx < 100)) {
		tmpidx++;
	}

	if (tmpidx < 100)
		return true;
	return false;
}