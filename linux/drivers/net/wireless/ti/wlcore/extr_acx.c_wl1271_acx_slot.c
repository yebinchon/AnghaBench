
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_slot {int slot_time; int wone_index; int role_id; } ;
typedef enum acx_slot_type { ____Placeholder_acx_slot_type } acx_slot_type ;


 int ACX_SLOT ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int STATION_WONE_INDEX ;
 int kfree (struct acx_slot*) ;
 struct acx_slot* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_slot*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_slot(struct wl1271 *wl, struct wl12xx_vif *wlvif,
      enum acx_slot_type slot_time)
{
 struct acx_slot *slot;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx slot");

 slot = kzalloc(sizeof(*slot), GFP_KERNEL);
 if (!slot) {
  ret = -ENOMEM;
  goto out;
 }

 slot->role_id = wlvif->role_id;
 slot->wone_index = STATION_WONE_INDEX;
 slot->slot_time = slot_time;

 ret = wl1271_cmd_configure(wl, ACX_SLOT, slot, sizeof(*slot));
 if (ret < 0) {
  wl1271_warning("failed to set slot time: %d", ret);
  goto out;
 }

out:
 kfree(slot);
 return ret;
}
