
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_tx_report {scalar_t__ last_sent_sn; scalar_t__ last_recv_sn; scalar_t__ last_sent_time; } ;
struct rtl_priv {struct rtl_tx_report tx_report; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_TX_REPORT ;
 int DBG_WARNING ;
 int HZ ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,scalar_t__) ;
 int jiffies ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ time_before (scalar_t__,int ) ;

bool rtl_check_tx_report_acked(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_tx_report *tx_report = &rtlpriv->tx_report;

 if (tx_report->last_sent_sn == tx_report->last_recv_sn)
  return 1;

 if (time_before(tx_report->last_sent_time + 3 * HZ, jiffies)) {
  RT_TRACE(rtlpriv, COMP_TX_REPORT, DBG_WARNING,
    "Check TX-Report timeout!! s_sn=0x%X r_sn=0x%X\n",
    tx_report->last_sent_sn, tx_report->last_recv_sn);
  return 1;
 }

 return 0;
}
