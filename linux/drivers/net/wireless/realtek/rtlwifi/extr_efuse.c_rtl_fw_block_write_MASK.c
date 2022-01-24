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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ START_ADDRESS ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_hw *hw, const u8 *buffer, u32 size)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u8 *pu4byteptr = (u8 *)buffer;
	u32 i;

	for (i = 0; i < size; i++)
		FUNC1(rtlpriv, (START_ADDRESS + i), *(pu4byteptr + i));
}