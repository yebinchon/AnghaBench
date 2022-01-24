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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int RATE_ALL_CCK ; 
 int RATE_ALL_OFDM_AG ; 
 int /*<<< orphan*/  REG_HWSEQ_CTRL ; 
 int /*<<< orphan*/  REG_RRSR ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u32 reg_prsr;

	reg_prsr = RATE_ALL_CCK | RATE_ALL_OFDM_AG;

	FUNC2(rtlpriv, REG_RRSR, reg_prsr);
	FUNC1(rtlpriv, REG_HWSEQ_CTRL, 0xFF);
}