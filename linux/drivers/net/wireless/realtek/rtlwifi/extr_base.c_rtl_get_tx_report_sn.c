
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct rtlwifi_tx_info {int send_time; void* sn; } ;
struct rtl_tx_report {int last_sent_time; void* last_sent_sn; int sn; } ;
struct rtl_priv {struct rtl_tx_report tx_report; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_TX_REPORT ;
 int DBG_DMESG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,void*) ;
 int atomic_inc_return (int *) ;
 int jiffies ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static u16 rtl_get_tx_report_sn(struct ieee80211_hw *hw,
    struct rtlwifi_tx_info *tx_info)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_tx_report *tx_report = &rtlpriv->tx_report;
 u16 sn;





 sn = (atomic_inc_return(&tx_report->sn) & 0x003F) << 2;

 tx_report->last_sent_sn = sn;
 tx_report->last_sent_time = jiffies;
 tx_info->sn = sn;
 tx_info->send_time = tx_report->last_sent_time;
 RT_TRACE(rtlpriv, COMP_TX_REPORT, DBG_DMESG,
   "Send TX-Report sn=0x%X\n", sn);

 return sn;
}
