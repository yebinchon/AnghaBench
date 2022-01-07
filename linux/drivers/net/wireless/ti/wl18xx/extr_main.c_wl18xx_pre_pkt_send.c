
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int ctrl; } ;
struct wl1271_tx_hw_descr {TYPE_1__ wl18xx_mem; } ;
struct wl1271 {int quirks; scalar_t__ aggr_buf; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int WL12XX_BUS_BLOCK_SIZE ;
 int WL18XX_TX_CTRL_NOT_PADDED ;
 int WLCORE_QUIRK_TX_PAD_LAST_FRAME ;

__attribute__((used)) static u32 wl18xx_pre_pkt_send(struct wl1271 *wl,
          u32 buf_offset, u32 last_len)
{
 if (wl->quirks & WLCORE_QUIRK_TX_PAD_LAST_FRAME) {
  struct wl1271_tx_hw_descr *last_desc;


  last_desc = (struct wl1271_tx_hw_descr *)(wl->aggr_buf +
       buf_offset - last_len);


  last_desc->wl18xx_mem.ctrl &= ~WL18XX_TX_CTRL_NOT_PADDED;
  return ALIGN(buf_offset, WL12XX_BUS_BLOCK_SIZE);
 }


 return buf_offset;
}
