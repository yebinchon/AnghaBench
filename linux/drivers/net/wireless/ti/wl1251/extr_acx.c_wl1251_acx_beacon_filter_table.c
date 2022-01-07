
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_beacon_filter_ie_table {int num_ie; int * table; } ;


 int ACX_BEACON_FILTER_TABLE ;
 int BEACON_FILTER_IE_ID_CHANNEL_SWITCH_ANN ;
 int BEACON_RULE_PASS_ON_APPEARANCE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_beacon_filter_ie_table*) ;
 struct acx_beacon_filter_ie_table* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_beacon_filter_ie_table*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_beacon_filter_table(struct wl1251 *wl)
{
 struct acx_beacon_filter_ie_table *ie_table;
 int idx = 0;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx beacon filter table");

 ie_table = kzalloc(sizeof(*ie_table), GFP_KERNEL);
 if (!ie_table)
  return -ENOMEM;


 ie_table->num_ie = 1;
 ie_table->table[idx++] = BEACON_FILTER_IE_ID_CHANNEL_SWITCH_ANN;
 ie_table->table[idx++] = BEACON_RULE_PASS_ON_APPEARANCE;

 ret = wl1251_cmd_configure(wl, ACX_BEACON_FILTER_TABLE,
       ie_table, sizeof(*ie_table));
 if (ret < 0) {
  wl1251_warning("failed to set beacon filter table: %d", ret);
  goto out;
 }

out:
 kfree(ie_table);
 return ret;
}
