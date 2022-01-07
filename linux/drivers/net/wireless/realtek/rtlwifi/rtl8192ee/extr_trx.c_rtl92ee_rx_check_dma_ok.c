
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;


 scalar_t__ get_rx_buffer_desc_fs (int *) ;
 scalar_t__ get_rx_buffer_desc_ls (int *) ;
 scalar_t__ get_rx_buffer_desc_total_length (int *) ;

void rtl92ee_rx_check_dma_ok(struct ieee80211_hw *hw, u8 *header_desc8,
        u8 queue_index)
{
 u8 first_seg = 0;
 u8 last_seg = 0;
 u16 total_len = 0;
 u16 read_cnt = 0;
 __le32 *header_desc = (__le32 *)header_desc8;

 if (header_desc == ((void*)0))
  return;

 total_len = (u16)get_rx_buffer_desc_total_length(header_desc);

 first_seg = (u8)get_rx_buffer_desc_fs(header_desc);

 last_seg = (u8)get_rx_buffer_desc_ls(header_desc);

 while (total_len == 0 && first_seg == 0 && last_seg == 0) {
  read_cnt++;
  total_len = (u16)get_rx_buffer_desc_total_length(header_desc);
  first_seg = (u8)get_rx_buffer_desc_fs(header_desc);
  last_seg = (u8)get_rx_buffer_desc_ls(header_desc);

  if (read_cnt > 20)
   break;
 }
}
