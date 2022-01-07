
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_wow_pattern {int crc; scalar_t__ type; int* mask; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 scalar_t__ BROADCAST_PATTERN ;
 int COMP_POWER ;
 int DBG_TRACE ;
 int DISABLE_TRXPKT_BUF_ACCESS ;
 int MAX_RX_DMA_BUFFER_SIZE_8812 ;
 scalar_t__ MULTICAST_PATTERN ;
 int REG_PKTBUF_DBG_CTRL ;
 int REG_PKTBUF_DBG_DATA_H ;
 int REG_PKTBUF_DBG_DATA_L ;
 int REG_PKT_BUFF_ACCESS_CTRL ;
 int REG_RXPKTBUF_CTRL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int ,int) ;
 int RXPKT_BUF_SELECT ;
 scalar_t__ UNICAST_PATTERN ;
 int WARN_ONCE (int,char*,int) ;
 int WKFMCAM_ADDR_NUM ;
 int WKFMCAM_SIZE ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int udelay (int) ;

void rtl8821ae_add_wowlan_pattern(struct ieee80211_hw *hw,
      struct rtl_wow_pattern *rtl_pattern,
      u8 index)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 cam = 0;
 u8 addr = 0;
 u16 rxbuf_addr;
 u8 tmp, count = 0;
 u16 cam_start;
 u16 offset;




 offset = MAX_RX_DMA_BUFFER_SIZE_8812 / 128;

 cam_start = offset * 128;


 rtl_write_byte(rtlpriv, REG_PKT_BUFF_ACCESS_CTRL, RXPKT_BUF_SELECT);
 for (addr = 0; addr < WKFMCAM_ADDR_NUM; addr++) {
  rxbuf_addr = (cam_start + index * WKFMCAM_SIZE + addr * 4) >> 3;

  rtl_write_word(rtlpriv, REG_PKTBUF_DBG_CTRL, rxbuf_addr);

  if (addr == 0) {
   cam = BIT(31) | rtl_pattern->crc;

   if (rtl_pattern->type == UNICAST_PATTERN)
    cam |= BIT(24);
   else if (rtl_pattern->type == MULTICAST_PATTERN)
    cam |= BIT(25);
   else if (rtl_pattern->type == BROADCAST_PATTERN)
    cam |= BIT(26);

   rtl_write_dword(rtlpriv, REG_PKTBUF_DBG_DATA_L, cam);
   RT_TRACE(rtlpriv, COMP_POWER, DBG_TRACE,
     "WRITE entry[%d] 0x%x: %x\n", addr,
      REG_PKTBUF_DBG_DATA_L, cam);


   rtl_write_word(rtlpriv, REG_RXPKTBUF_CTRL, 0x0f01);
  } else if (addr == 2 || addr == 4) {
   cam = rtl_pattern->mask[addr - 2];

   rtl_write_dword(rtlpriv, REG_PKTBUF_DBG_DATA_L, cam);
   RT_TRACE(rtlpriv, COMP_POWER, DBG_TRACE,
     "WRITE entry[%d] 0x%x: %x\n", addr,
      REG_PKTBUF_DBG_DATA_L, cam);

   rtl_write_word(rtlpriv, REG_RXPKTBUF_CTRL, 0x0f01);
  } else if (addr == 3 || addr == 5) {
   cam = rtl_pattern->mask[addr - 2];

   rtl_write_dword(rtlpriv, REG_PKTBUF_DBG_DATA_H, cam);
   RT_TRACE(rtlpriv, COMP_POWER, DBG_TRACE,
     "WRITE entry[%d] 0x%x: %x\n", addr,
      REG_PKTBUF_DBG_DATA_H, cam);

   rtl_write_word(rtlpriv, REG_RXPKTBUF_CTRL, 0xf001);
  }

  count = 0;
  do {
   tmp = rtl_read_byte(rtlpriv, REG_RXPKTBUF_CTRL);
   udelay(2);
   count++;
  } while (tmp && count < 100);

  WARN_ONCE((count >= 100),
     "rtl8821ae: Write wake up frame mask FAIL %d value!\n",
     tmp);
 }

 rtl_write_byte(rtlpriv, REG_PKT_BUFF_ACCESS_CTRL,
         DISABLE_TRXPKT_BUF_ACCESS);
}
