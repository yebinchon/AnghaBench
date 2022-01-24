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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rtl_desc_qsel { ____Placeholder_rtl_desc_qsel } rtl_desc_qsel ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_USB ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int QSLT_BE ; 
 int QSLT_BEACON ; 
 int QSLT_BK ; 
 int QSLT_MGNT ; 
 int QSLT_VI ; 
 int QSLT_VO ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum rtl_desc_qsel FUNC5(struct ieee80211_hw *hw,
					 __le16 fc, u16 mac80211_queue_index)
{
	enum rtl_desc_qsel qsel;
	struct rtl_priv *rtlpriv = FUNC3(hw);

	if (FUNC4(FUNC1(fc))) {
		qsel = QSLT_BEACON;
		goto out;
	}
	if (FUNC2(fc)) {
		qsel = QSLT_MGNT;
		goto out;
	}
	switch (mac80211_queue_index) {
	case 0:	/* VO */
		qsel = QSLT_VO;
		FUNC0(rtlpriv, COMP_USB, DBG_DMESG,
			 "VO queue, set qsel = 0x%x\n", QSLT_VO);
		break;
	case 1:	/* VI */
		qsel = QSLT_VI;
		FUNC0(rtlpriv, COMP_USB, DBG_DMESG,
			 "VI queue, set qsel = 0x%x\n", QSLT_VI);
		break;
	case 3:	/* BK */
		qsel = QSLT_BK;
		FUNC0(rtlpriv, COMP_USB, DBG_DMESG,
			 "BK queue, set qsel = 0x%x\n", QSLT_BK);
		break;
	case 2:	/* BE */
	default:
		qsel = QSLT_BE;
		FUNC0(rtlpriv, COMP_USB, DBG_DMESG,
			 "BE queue, set qsel = 0x%x\n", QSLT_BE);
		break;
	}
out:
	return qsel;
}