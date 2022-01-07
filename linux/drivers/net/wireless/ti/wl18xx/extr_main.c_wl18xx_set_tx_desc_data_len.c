
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_mem_blocks; scalar_t__ ctrl; } ;
struct wl1271_tx_hw_descr {TYPE_1__ wl18xx_mem; int life_time; int length; int hlid; } ;
struct wl1271 {int quirks; } ;
struct sk_buff {int len; } ;


 int DEBUG_TX ;
 scalar_t__ WL18XX_TX_CTRL_NOT_PADDED ;
 int WLCORE_QUIRK_TX_PAD_LAST_FRAME ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int wl1271_debug (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
wl18xx_set_tx_desc_data_len(struct wl1271 *wl, struct wl1271_tx_hw_descr *desc,
       struct sk_buff *skb)
{
 desc->length = cpu_to_le16(skb->len);


 if (wl->quirks & WLCORE_QUIRK_TX_PAD_LAST_FRAME)
  desc->wl18xx_mem.ctrl = WL18XX_TX_CTRL_NOT_PADDED;
 else
  desc->wl18xx_mem.ctrl = 0;

 wl1271_debug(DEBUG_TX, "tx_fill_hdr: hlid: %d "
       "len: %d life: %d mem: %d", desc->hlid,
       le16_to_cpu(desc->length),
       le16_to_cpu(desc->life_time),
       desc->wl18xx_mem.total_mem_blocks);
}
