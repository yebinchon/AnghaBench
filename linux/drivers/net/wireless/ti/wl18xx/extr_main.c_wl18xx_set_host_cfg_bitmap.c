
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int quirks; } ;


 int HOST_IF_CFG_ADD_RX_ALIGNMENT ;
 int HOST_IF_CFG_RX_FIFO_ENABLE ;
 int HOST_IF_CFG_RX_PAD_TO_SDIO_BLK ;
 int HOST_IF_CFG_TX_PAD_TO_SDIO_BLK ;
 int WL12XX_BUS_BLOCK_SIZE ;
 int WL18XX_HOST_IF_LEN_SIZE_FIELD ;
 int WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN ;
 int WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN ;
 int wl18xx_acx_host_if_cfg_bitmap (struct wl1271*,int,int,int,int ) ;

__attribute__((used)) static int wl18xx_set_host_cfg_bitmap(struct wl1271 *wl, u32 extra_mem_blk)
{
 int ret;
 u32 sdio_align_size = 0;
 u32 host_cfg_bitmap = HOST_IF_CFG_RX_FIFO_ENABLE |
         HOST_IF_CFG_ADD_RX_ALIGNMENT;


 if (wl->quirks & WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN) {
  host_cfg_bitmap |= HOST_IF_CFG_TX_PAD_TO_SDIO_BLK;
  sdio_align_size = WL12XX_BUS_BLOCK_SIZE;
 }


 if (wl->quirks & WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN) {
  host_cfg_bitmap |= HOST_IF_CFG_RX_PAD_TO_SDIO_BLK;
  sdio_align_size = WL12XX_BUS_BLOCK_SIZE;
 }

 ret = wl18xx_acx_host_if_cfg_bitmap(wl, host_cfg_bitmap,
         sdio_align_size, extra_mem_blk,
         WL18XX_HOST_IF_LEN_SIZE_FIELD);
 if (ret < 0)
  return ret;

 return 0;
}
