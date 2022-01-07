
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int ap_pending_auth_reply; int role_id; int inconn_count; } ;
struct wl1271_station {int in_connection; } ;
struct wl1271 {int roc_map; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ test_bit (int ,int ) ;
 int wl12xx_croc (struct wl1271*,int ) ;
 int wlcore_roc_if_possible (struct wl1271*,struct wl12xx_vif*) ;

void wlcore_update_inconn_sta(struct wl1271 *wl, struct wl12xx_vif *wlvif,
         struct wl1271_station *wl_sta, bool in_conn)
{
 if (in_conn) {
  if (WARN_ON(wl_sta && wl_sta->in_connection))
   return;

  if (!wlvif->ap_pending_auth_reply &&
      !wlvif->inconn_count)
   wlcore_roc_if_possible(wl, wlvif);

  if (wl_sta) {
   wl_sta->in_connection = 1;
   wlvif->inconn_count++;
  } else {
   wlvif->ap_pending_auth_reply = 1;
  }
 } else {
  if (wl_sta && !wl_sta->in_connection)
   return;

  if (WARN_ON(!wl_sta && !wlvif->ap_pending_auth_reply))
   return;

  if (WARN_ON(wl_sta && !wlvif->inconn_count))
   return;

  if (wl_sta) {
   wl_sta->in_connection = 0;
   wlvif->inconn_count--;
  } else {
   wlvif->ap_pending_auth_reply = 0;
  }

  if (!wlvif->inconn_count && !wlvif->ap_pending_auth_reply &&
      test_bit(wlvif->role_id, wl->roc_map))
   wl12xx_croc(wl, wlvif->role_id);
 }
}
