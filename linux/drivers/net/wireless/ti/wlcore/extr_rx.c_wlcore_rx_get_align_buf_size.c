
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int quirks; } ;


 int ALIGN (int ,int ) ;
 int WL12XX_BUS_BLOCK_SIZE ;
 int WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN ;

__attribute__((used)) static u32 wlcore_rx_get_align_buf_size(struct wl1271 *wl, u32 pkt_len)
{
 if (wl->quirks & WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN)
  return ALIGN(pkt_len, WL12XX_BUS_BLOCK_SIZE);

 return pkt_len;
}
