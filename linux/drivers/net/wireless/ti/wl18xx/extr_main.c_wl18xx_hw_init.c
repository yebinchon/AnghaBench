
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_priv {scalar_t__ extra_spare_key_count; scalar_t__ last_fw_rls_idx; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;


 int WL18XX_TX_HW_BLOCK_SPARE ;
 scalar_t__ checksum_param ;
 int wl18xx_acx_dynamic_fw_traces (struct wl1271*) ;
 int wl18xx_acx_set_checksum_state (struct wl1271*) ;
 int wl18xx_set_host_cfg_bitmap (struct wl1271*,int ) ;

__attribute__((used)) static int wl18xx_hw_init(struct wl1271 *wl)
{
 int ret;
 struct wl18xx_priv *priv = wl->priv;


 priv->last_fw_rls_idx = 0;
 priv->extra_spare_key_count = 0;


 ret = wl18xx_set_host_cfg_bitmap(wl, WL18XX_TX_HW_BLOCK_SPARE);
 if (ret < 0)
  return ret;


 ret = wl18xx_acx_dynamic_fw_traces(wl);
 if (ret < 0)
  return ret;

 if (checksum_param) {
  ret = wl18xx_acx_set_checksum_state(wl);
  if (ret != 0)
   return ret;
 }

 return ret;
}
