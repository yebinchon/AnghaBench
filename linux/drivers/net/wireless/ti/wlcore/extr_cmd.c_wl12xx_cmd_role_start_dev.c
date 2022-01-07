
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {size_t dev_hlid; int dev_role_id; } ;
struct TYPE_2__ {size_t hlid; int session; } ;
struct wl12xx_cmd_role_start {int channel; TYPE_1__ device; int role_id; int band; } ;
struct wl1271 {int * session_ids; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int CMD_ROLE_START ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NL80211_BAND_5GHZ ;
 size_t WL12XX_INVALID_LINK_ID ;
 int WLCORE_BAND_5GHZ ;
 int kfree (struct wl12xx_cmd_role_start*) ;
 struct wl12xx_cmd_role_start* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_role_start*,int,int ) ;
 int wl1271_debug (int ,char*,int ,...) ;
 int wl1271_error (char*) ;
 int wl12xx_allocate_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;

__attribute__((used)) static int wl12xx_cmd_role_start_dev(struct wl1271 *wl,
         struct wl12xx_vif *wlvif,
         enum nl80211_band band,
         int channel)
{
 struct wl12xx_cmd_role_start *cmd;
 int ret;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 wl1271_debug(DEBUG_CMD, "cmd role start dev %d", wlvif->dev_role_id);

 cmd->role_id = wlvif->dev_role_id;
 if (band == NL80211_BAND_5GHZ)
  cmd->band = WLCORE_BAND_5GHZ;
 cmd->channel = channel;

 if (wlvif->dev_hlid == WL12XX_INVALID_LINK_ID) {
  ret = wl12xx_allocate_link(wl, wlvif, &wlvif->dev_hlid);
  if (ret)
   goto out_free;
 }
 cmd->device.hlid = wlvif->dev_hlid;
 cmd->device.session = wl->session_ids[wlvif->dev_hlid];

 wl1271_debug(DEBUG_CMD, "role start: roleid=%d, hlid=%d, session=%d",
       cmd->role_id, cmd->device.hlid, cmd->device.session);

 ret = wl1271_cmd_send(wl, CMD_ROLE_START, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to initiate cmd role enable");
  goto err_hlid;
 }

 goto out_free;

err_hlid:

 wl12xx_free_link(wl, wlvif, &wlvif->dev_hlid);

out_free:
 kfree(cmd);

out:
 return ret;
}
