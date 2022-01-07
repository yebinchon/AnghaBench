
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wl12xx_vif {int * links_map; } ;
struct wl1271 {int active_link_count; int ap_count; TYPE_1__* links; int ap_fw_ps_map; } ;
struct TYPE_2__ {size_t allocated_pkts; } ;


 scalar_t__ WARN_ON (int) ;
 size_t WL1271_PS_STA_MAX_PACKETS ;
 int test_bit (size_t,int *) ;
 int wl12xx_ps_link_start (struct wl1271*,struct wl12xx_vif*,size_t,int) ;

__attribute__((used)) static void wl1271_tx_regulate_link(struct wl1271 *wl,
        struct wl12xx_vif *wlvif,
        u8 hlid)
{
 bool fw_ps;
 u8 tx_pkts;

 if (WARN_ON(!test_bit(hlid, wlvif->links_map)))
  return;

 fw_ps = test_bit(hlid, &wl->ap_fw_ps_map);
 tx_pkts = wl->links[hlid].allocated_pkts;
 if (wl->active_link_count > (wl->ap_count*2 + 1) && fw_ps &&
     tx_pkts >= WL1271_PS_STA_MAX_PACKETS)
  wl12xx_ps_link_start(wl, wlvif, hlid, 1);
}
