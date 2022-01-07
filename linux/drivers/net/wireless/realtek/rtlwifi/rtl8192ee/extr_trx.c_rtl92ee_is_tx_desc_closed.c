
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ rfoff_reason; } ;
struct TYPE_3__ {scalar_t__ driver_is_goingto_unload; } ;
struct rtl_priv {TYPE_2__ psc; TYPE_1__ rtlhal; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {scalar_t__ cur_tx_rp; scalar_t__ cur_tx_wp; } ;
struct ieee80211_hw {int dummy; } ;


 size_t BEACON_QUEUE ;
 scalar_t__ RF_CHANGE_BY_PS ;
 int get_desc_addr_fr_q_idx (size_t) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;

bool rtl92ee_is_tx_desc_closed(struct ieee80211_hw *hw, u8 hw_queue, u16 index)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u16 read_point, write_point;
 bool ret = 0;
 static u8 stop_report_cnt;
 struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[hw_queue];

 {
  u16 cur_tx_rp, cur_tx_wp;
  u32 tmpu32;

  tmpu32 =
    rtl_read_dword(rtlpriv,
     get_desc_addr_fr_q_idx(hw_queue));
  cur_tx_rp = (u16)((tmpu32 >> 16) & 0x0fff);
  cur_tx_wp = (u16)(tmpu32 & 0x0fff);


  ring->cur_tx_rp = cur_tx_rp;
 }

 read_point = ring->cur_tx_rp;
 write_point = ring->cur_tx_wp;

 if (write_point > read_point) {
  if (index < write_point && index >= read_point)
   ret = 0;
  else
   ret = 1;
 } else if (write_point < read_point) {
  if (index > write_point && index < read_point)
   ret = 1;
  else
   ret = 0;
 } else {
  if (index != read_point)
   ret = 1;
 }

 if (hw_queue == BEACON_QUEUE)
  ret = 1;

 if (rtlpriv->rtlhal.driver_is_goingto_unload ||
     rtlpriv->psc.rfoff_reason > RF_CHANGE_BY_PS)
  ret = 1;

 if (hw_queue < BEACON_QUEUE) {
  if (!ret)
   stop_report_cnt++;
  else
   stop_report_cnt = 0;
 }

 return ret;
}
