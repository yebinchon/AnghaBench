
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dynamic_fw_traces; } ;
struct acx_dynamic_fw_traces_cfg {int dynamic_fw_traces; } ;


 int ACX_DYNAMIC_TRACES_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct acx_dynamic_fw_traces_cfg*) ;
 struct acx_dynamic_fw_traces_cfg* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_dynamic_fw_traces_cfg*,int) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_dynamic_fw_traces(struct wl1271 *wl)
{
 struct acx_dynamic_fw_traces_cfg *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx dynamic fw traces config %d",
       wl->dynamic_fw_traces);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->dynamic_fw_traces = cpu_to_le32(wl->dynamic_fw_traces);

 ret = wl1271_cmd_configure(wl, ACX_DYNAMIC_TRACES_CFG,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx config dynamic fw traces failed: %d", ret);
  goto out;
 }
out:
 kfree(acx);
 return ret;
}
