
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct TYPE_3__ {int bcn_filt_ie_count; struct conf_bcn_filt_rule* bcn_filt_ie; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct conf_bcn_filt_rule {scalar_t__ ie; scalar_t__ rule; scalar_t__ type; int version; int oui; } ;
struct acx_beacon_filter_ie_table {scalar_t__* table; scalar_t__ num_ie; int role_id; } ;


 int ACX_BEACON_FILTER_TABLE ;
 scalar_t__ CONF_BCN_IE_OUI_LEN ;
 scalar_t__ CONF_BCN_IE_VER_LEN ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WLAN_EID_VENDOR_SPECIFIC ;
 int kfree (struct acx_beacon_filter_ie_table*) ;
 struct acx_beacon_filter_ie_table* kzalloc (int,int ) ;
 int memcpy (scalar_t__*,int ,scalar_t__) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_beacon_filter_ie_table*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_beacon_filter_table(struct wl1271 *wl,
       struct wl12xx_vif *wlvif)
{
 struct acx_beacon_filter_ie_table *ie_table;
 int i, idx = 0;
 int ret;
 bool vendor_spec = 0;

 wl1271_debug(DEBUG_ACX, "acx beacon filter table");

 ie_table = kzalloc(sizeof(*ie_table), GFP_KERNEL);
 if (!ie_table) {
  ret = -ENOMEM;
  goto out;
 }


 ie_table->role_id = wlvif->role_id;
 ie_table->num_ie = 0;
 for (i = 0; i < wl->conf.conn.bcn_filt_ie_count; i++) {
  struct conf_bcn_filt_rule *r = &(wl->conf.conn.bcn_filt_ie[i]);
  ie_table->table[idx++] = r->ie;
  ie_table->table[idx++] = r->rule;

  if (r->ie == WLAN_EID_VENDOR_SPECIFIC) {

   if (vendor_spec)
    continue;



   memcpy(&(ie_table->table[idx]), r->oui,
          CONF_BCN_IE_OUI_LEN);
   idx += CONF_BCN_IE_OUI_LEN;
   ie_table->table[idx++] = r->type;
   memcpy(&(ie_table->table[idx]), r->version,
          CONF_BCN_IE_VER_LEN);
   idx += CONF_BCN_IE_VER_LEN;
   vendor_spec = 1;
  }

  ie_table->num_ie++;
 }

 ret = wl1271_cmd_configure(wl, ACX_BEACON_FILTER_TABLE,
       ie_table, sizeof(*ie_table));
 if (ret < 0) {
  wl1271_warning("failed to set beacon filter table: %d", ret);
  goto out;
 }

out:
 kfree(ie_table);
 return ret;
}
