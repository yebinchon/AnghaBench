
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int quirks; } ;


 int ALIGNED_RX_BUF_SIZE_MASK ;
 int ALIGNED_RX_BUF_SIZE_SHIFT ;
 int RX_BUF_SIZE_MASK ;
 int RX_BUF_SIZE_SHIFT_DIV ;
 int WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN ;

__attribute__((used)) static u32 wlcore_rx_get_buf_size(struct wl1271 *wl,
      u32 rx_pkt_desc)
{
 if (wl->quirks & WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN)
  return (rx_pkt_desc & ALIGNED_RX_BUF_SIZE_MASK) >>
         ALIGNED_RX_BUF_SIZE_SHIFT;

 return (rx_pkt_desc & RX_BUF_SIZE_MASK) >> RX_BUF_SIZE_SHIFT_DIV;
}
