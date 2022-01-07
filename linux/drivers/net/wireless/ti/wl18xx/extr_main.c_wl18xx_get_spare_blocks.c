
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_priv {scalar_t__ extra_spare_key_count; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;


 int WL18XX_TX_HW_BLOCK_SPARE ;
 int WL18XX_TX_HW_EXTRA_BLOCK_SPARE ;

__attribute__((used)) static int wl18xx_get_spare_blocks(struct wl1271 *wl, bool is_gem)
{
 struct wl18xx_priv *priv = wl->priv;


 if (priv->extra_spare_key_count)
  return WL18XX_TX_HW_EXTRA_BLOCK_SPARE;

 return WL18XX_TX_HW_BLOCK_SPARE;
}
