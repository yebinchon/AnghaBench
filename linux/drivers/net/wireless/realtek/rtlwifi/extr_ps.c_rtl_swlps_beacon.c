
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int ps_work; int rtl_wq; } ;
struct TYPE_7__ {int multi_buffered; int dtim_counter; int last_beacon; scalar_t__ fwctrl_lps; int sw_ps_enabled; int swctrl_lps; } ;
struct TYPE_6__ {scalar_t__ link_state; int assoc_id; int bssid; } ;
struct rtl_priv {TYPE_4__ works; TYPE_3__ psc; TYPE_2__ mac80211; } ;
struct rtl_mac {scalar_t__ opmode; } ;
struct ieee80211_tim_ie {int bitmap_ctrl; int dtim_count; } ;
struct TYPE_5__ {int flags; int ps_dtim_period; } ;
struct ieee80211_hw {TYPE_1__ conf; } ;
struct ieee80211_hdr {int addr3; int frame_control; } ;


 int COMP_POWER ;
 int DBG_DMESG ;
 int FCS_LEN ;
 int IEEE80211_CONF_PS ;
 scalar_t__ MAC80211_LINKED ;
 int MSECS (int) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 int WARN_ON_ONCE (int) ;
 int WLAN_EID_TIM ;
 int ether_addr_equal_64bits (int ,int ) ;
 int ieee80211_check_tim (struct ieee80211_tim_ie*,int,int ) ;
 int ieee80211_is_beacon (int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int* rtl_find_ie (void*,unsigned int,int ) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_swlps_beacon(struct ieee80211_hw *hw, void *data, unsigned int len)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct ieee80211_hdr *hdr = data;
 struct ieee80211_tim_ie *tim_ie;
 u8 *tim;
 u8 tim_len;
 bool u_buffed;
 bool m_buffed;

 if (mac->opmode != NL80211_IFTYPE_STATION)
  return;

 if (!rtlpriv->psc.swctrl_lps)
  return;

 if (rtlpriv->mac80211.link_state != MAC80211_LINKED)
  return;

 if (!rtlpriv->psc.sw_ps_enabled)
  return;

 if (rtlpriv->psc.fwctrl_lps)
  return;

 if (likely(!(hw->conf.flags & IEEE80211_CONF_PS)))
  return;


 if (!ieee80211_is_beacon(hdr->frame_control))
  return;


 if (len <= 40 + FCS_LEN)
  return;


 if (!ether_addr_equal_64bits(hdr->addr3, rtlpriv->mac80211.bssid))
  return;

 rtlpriv->psc.last_beacon = jiffies;

 tim = rtl_find_ie(data, len - FCS_LEN, WLAN_EID_TIM);
 if (!tim)
  return;

 if (tim[1] < sizeof(*tim_ie))
  return;

 tim_len = tim[1];
 tim_ie = (struct ieee80211_tim_ie *) &tim[2];

 if (!WARN_ON_ONCE(!hw->conf.ps_dtim_period))
  rtlpriv->psc.dtim_counter = tim_ie->dtim_count;




 u_buffed = ieee80211_check_tim(tim_ie, tim_len,
           rtlpriv->mac80211.assoc_id);


 m_buffed = tim_ie->bitmap_ctrl & 0x01;
 rtlpriv->psc.multi_buffered = m_buffed;




 if (!m_buffed) {


  queue_delayed_work(rtlpriv->works.rtl_wq,
       &rtlpriv->works.ps_work, MSECS(5));
 } else {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "u_bufferd: %x, m_buffered: %x\n", u_buffed, m_buffed);
 }
}
