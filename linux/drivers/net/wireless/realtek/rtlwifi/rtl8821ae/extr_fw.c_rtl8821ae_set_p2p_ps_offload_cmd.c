
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_p2p_ps_info {int noa_num; int* noa_duration; int* noa_interval; int* noa_start_time; int* noa_count_type; int opp_ps; int p2p_ps_state; int ctwindow; } ;
struct rtl_ps_ctl {struct rtl_p2p_ps_info p2p_ps_info; } ;
struct TYPE_2__ {int p2p; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct p2p_ps_offload_t {int ctwindow_en; int noa0_en; int noa1_en; int offload_en; int role; int discovery; int allstasleep; } ;
struct rtl_hal {struct p2p_ps_offload_t p2p_ps_offload; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_FW ;
 int DBG_LOUD ;
 int H2C_8821AE_P2P_PS_OFFLOAD ;




 int P2P_ROLE_GO ;
 int REG_DUAL_TSF_RST ;
 int REG_TSFTR ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int memset (struct p2p_ps_offload_t*,int ,int) ;
 int rtl8821ae_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int*) ;
 int rtl8821ae_set_p2p_ctw_period_cmd (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;

void rtl8821ae_set_p2p_ps_offload_cmd(struct ieee80211_hw *hw, u8 p2p_ps_state)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *rtlps = rtl_psc(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_p2p_ps_info *p2pinfo = &rtlps->p2p_ps_info;
 struct p2p_ps_offload_t *p2p_ps_offload = &rtlhal->p2p_ps_offload;
 u8 i;
 u16 ctwindow;
 u32 start_time, tsf_low;

 switch (p2p_ps_state) {
 case 131:
  RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "P2P_PS_DISABLE\n");
  memset(p2p_ps_offload, 0, sizeof(*p2p_ps_offload));
  break;
 case 130:
  RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "P2P_PS_ENABLE\n");

  if (p2pinfo->ctwindow > 0) {
   p2p_ps_offload->ctwindow_en = 1;
   ctwindow = p2pinfo->ctwindow;
   rtl8821ae_set_p2p_ctw_period_cmd(hw, ctwindow);
  }


  for (i = 0 ; i < p2pinfo->noa_num ; i++) {

   rtl_write_byte(rtlpriv, 0x5cf, (i << 4));
   if (i == 0)
    p2p_ps_offload->noa0_en = 1;
   else
    p2p_ps_offload->noa1_en = 1;


   rtl_write_dword(rtlpriv, 0x5E0, p2pinfo->noa_duration[i]);
   rtl_write_dword(rtlpriv, 0x5E4, p2pinfo->noa_interval[i]);


   tsf_low = rtl_read_dword(rtlpriv, REG_TSFTR);

   start_time = p2pinfo->noa_start_time[i];
   if (p2pinfo->noa_count_type[i] != 1) {
    while (start_time <= (tsf_low+(50*1024))) {
     start_time += p2pinfo->noa_interval[i];
     if (p2pinfo->noa_count_type[i] != 255)
      p2pinfo->noa_count_type[i]--;
    }
   }
   rtl_write_dword(rtlpriv, 0x5E8, start_time);
   rtl_write_dword(rtlpriv, 0x5EC,
     p2pinfo->noa_count_type[i]);
  }

  if ((p2pinfo->opp_ps == 1) || (p2pinfo->noa_num > 0)) {

   rtl_write_byte(rtlpriv, REG_DUAL_TSF_RST, BIT(4));

   p2p_ps_offload->offload_en = 1;

   if (P2P_ROLE_GO == rtlpriv->mac80211.p2p) {
    p2p_ps_offload->role = 1;
    p2p_ps_offload->allstasleep = 0;
   } else {
    p2p_ps_offload->role = 0;
   }

   p2p_ps_offload->discovery = 0;
  }
  break;
 case 129:
  RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "P2P_PS_SCAN\n");
  p2p_ps_offload->discovery = 1;
  break;
 case 128:
  RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "P2P_PS_SCAN_DONE\n");
  p2p_ps_offload->discovery = 0;
  p2pinfo->p2p_ps_state = 130;
  break;
 default:
  break;
 }

 rtl8821ae_fill_h2c_cmd(hw,
   H2C_8821AE_P2P_PS_OFFLOAD, 1, (u8 *)p2p_ps_offload);
}
