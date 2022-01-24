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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_EDCA_VO_PARAM ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,scalar_t__,int) ; 

void FUNC2(struct ieee80211_hw *hw,
			    u16 queue, u16 txop, u8 cw_min, u8 cw_max, u8 aifs)
{
	/* sequence: VO, VI, BE, BK ==> the same as 92C hardware design.
	 * referenc : enum nl80211_txq_q or ieee80211_set_wmm_default function.
	 */
	u32 value;
	struct rtl_priv *rtlpriv = FUNC0(hw);

	value = (u32)aifs;
	value |= ((u32)cw_min & 0xF) << 8;
	value |= ((u32)cw_max & 0xF) << 12;
	value |= (u32)txop << 16;
	/* 92C hardware register sequence is the same as queue number. */
	FUNC1(rtlpriv, (REG_EDCA_VO_PARAM + (queue * 4)), value);
}