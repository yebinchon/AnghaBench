
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl18xx_acx_host_config_bitmap {void* length_field_size; void* extra_mem_blocks; void* host_sdio_block_size; void* host_cfg_bitmap; } ;
struct wl1271 {int dummy; } ;


 int ACX_HOST_IF_CFG_BITMAP ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct wl18xx_acx_host_config_bitmap*) ;
 struct wl18xx_acx_host_config_bitmap* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl18xx_acx_host_config_bitmap*,int) ;
 int wl1271_debug (int ,char*,int ,int ,int ,int ) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_host_if_cfg_bitmap(struct wl1271 *wl, u32 host_cfg_bitmap,
      u32 sdio_blk_size, u32 extra_mem_blks,
      u32 len_field_size)
{
 struct wl18xx_acx_host_config_bitmap *bitmap_conf;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx cfg bitmap %d blk %d spare %d field %d",
       host_cfg_bitmap, sdio_blk_size, extra_mem_blks,
       len_field_size);

 bitmap_conf = kzalloc(sizeof(*bitmap_conf), GFP_KERNEL);
 if (!bitmap_conf) {
  ret = -ENOMEM;
  goto out;
 }

 bitmap_conf->host_cfg_bitmap = cpu_to_le32(host_cfg_bitmap);
 bitmap_conf->host_sdio_block_size = cpu_to_le32(sdio_blk_size);
 bitmap_conf->extra_mem_blocks = cpu_to_le32(extra_mem_blks);
 bitmap_conf->length_field_size = cpu_to_le32(len_field_size);

 ret = wl1271_cmd_configure(wl, ACX_HOST_IF_CFG_BITMAP,
       bitmap_conf, sizeof(*bitmap_conf));
 if (ret < 0) {
  wl1271_warning("wl1271 bitmap config opt failed: %d", ret);
  goto out;
 }

out:
 kfree(bitmap_conf);

 return ret;
}
