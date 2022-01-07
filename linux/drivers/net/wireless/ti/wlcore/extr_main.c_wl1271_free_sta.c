
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int sta_hlid_map; } ;
struct wl12xx_vif {TYPE_2__ ap; } ;
struct wl1271 {scalar_t__ active_sta_count; TYPE_1__* links; int ap_fw_ps_map; int ap_ps_map; } ;
struct TYPE_3__ {int addr; } ;


 int __clear_bit (size_t,int *) ;
 int clear_bit (size_t,int ) ;
 int test_bit (size_t,int ) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;
 int wl12xx_rearm_tx_watchdog_locked (struct wl1271*) ;
 int wlcore_save_freed_pkts_addr (struct wl1271*,struct wl12xx_vif*,size_t,int ) ;

void wl1271_free_sta(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 hlid)
{
 if (!test_bit(hlid, wlvif->ap.sta_hlid_map))
  return;

 clear_bit(hlid, wlvif->ap.sta_hlid_map);
 __clear_bit(hlid, &wl->ap_ps_map);
 __clear_bit(hlid, &wl->ap_fw_ps_map);





 wlcore_save_freed_pkts_addr(wl, wlvif, hlid, wl->links[hlid].addr);

 wl12xx_free_link(wl, wlvif, &hlid);
 wl->active_sta_count--;





 if (wl->active_sta_count == 0)
  wl12xx_rearm_tx_watchdog_locked(wl);
}
