
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rtl_desc_qsel { ____Placeholder_rtl_desc_qsel } rtl_desc_qsel ;
typedef int __le16 ;


 int COMP_USB ;
 int DBG_DMESG ;
 int QSLT_BE ;
 int QSLT_BEACON ;
 int QSLT_BK ;
 int QSLT_MGNT ;
 int QSLT_VI ;
 int QSLT_VO ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static enum rtl_desc_qsel _rtl8192cu_mq_to_descq(struct ieee80211_hw *hw,
      __le16 fc, u16 mac80211_queue_index)
{
 enum rtl_desc_qsel qsel;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (unlikely(ieee80211_is_beacon(fc))) {
  qsel = QSLT_BEACON;
  goto out;
 }
 if (ieee80211_is_mgmt(fc)) {
  qsel = QSLT_MGNT;
  goto out;
 }
 switch (mac80211_queue_index) {
 case 0:
  qsel = QSLT_VO;
  RT_TRACE(rtlpriv, COMP_USB, DBG_DMESG,
    "VO queue, set qsel = 0x%x\n", QSLT_VO);
  break;
 case 1:
  qsel = QSLT_VI;
  RT_TRACE(rtlpriv, COMP_USB, DBG_DMESG,
    "VI queue, set qsel = 0x%x\n", QSLT_VI);
  break;
 case 3:
  qsel = QSLT_BK;
  RT_TRACE(rtlpriv, COMP_USB, DBG_DMESG,
    "BK queue, set qsel = 0x%x\n", QSLT_BK);
  break;
 case 2:
 default:
  qsel = QSLT_BE;
  RT_TRACE(rtlpriv, COMP_USB, DBG_DMESG,
    "BE queue, set qsel = 0x%x\n", QSLT_BE);
  break;
 }
out:
 return qsel;
}
