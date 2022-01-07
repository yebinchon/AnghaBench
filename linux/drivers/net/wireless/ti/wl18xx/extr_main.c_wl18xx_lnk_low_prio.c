
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wl18xx_fw_status_priv {scalar_t__ tx_suspend_threshold; scalar_t__ tx_fast_stop_threshold; scalar_t__ tx_slow_stop_threshold; int link_suspend_bitmap; } ;
struct wl1271_link {scalar_t__ allocated_pkts; } ;
struct wl1271 {unsigned long fw_fast_lnk_map; unsigned long ap_fw_ps_map; TYPE_1__* fw_status; } ;
struct TYPE_2__ {scalar_t__ priv; } ;


 unsigned long le32_to_cpu (int ) ;
 scalar_t__ test_bit (scalar_t__,unsigned long*) ;

__attribute__((used)) static bool wl18xx_lnk_low_prio(struct wl1271 *wl, u8 hlid,
    struct wl1271_link *lnk)
{
 u8 thold;
 struct wl18xx_fw_status_priv *status_priv =
  (struct wl18xx_fw_status_priv *)wl->fw_status->priv;
 unsigned long suspend_bitmap;


 if (!status_priv)
  return 1;

 suspend_bitmap = le32_to_cpu(status_priv->link_suspend_bitmap);
 if (test_bit(hlid, &suspend_bitmap))
  thold = status_priv->tx_suspend_threshold;
 else if (test_bit(hlid, &wl->fw_fast_lnk_map) &&
   !test_bit(hlid, &wl->ap_fw_ps_map))
  thold = status_priv->tx_fast_stop_threshold;
 else
  thold = status_priv->tx_slow_stop_threshold;

 return lnk->allocated_pkts < thold;
}
