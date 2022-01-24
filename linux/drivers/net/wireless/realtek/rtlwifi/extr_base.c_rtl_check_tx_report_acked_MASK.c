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
struct rtl_tx_report {scalar_t__ last_sent_sn; scalar_t__ last_recv_sn; scalar_t__ last_sent_time; } ;
struct rtl_priv {struct rtl_tx_report tx_report; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_TX_REPORT ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

bool FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_tx_report *tx_report = &rtlpriv->tx_report;

	if (tx_report->last_sent_sn == tx_report->last_recv_sn)
		return true;

	if (FUNC2(tx_report->last_sent_time + 3 * HZ, jiffies)) {
		FUNC0(rtlpriv, COMP_TX_REPORT, DBG_WARNING,
			 "Check TX-Report timeout!! s_sn=0x%X r_sn=0x%X\n",
			 tx_report->last_sent_sn, tx_report->last_recv_sn);
		return true;	/* 3 sec. (timeout) seen as acked */
	}

	return false;
}