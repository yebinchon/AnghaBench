
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wl12xx_vif {int role_id; } ;
struct wl12xx_acx_fw_tsf_information {int current_tsf_high; int current_tsf_low; int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_header {int dummy; } ;


 int ACX_TSF_INFO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl12xx_acx_fw_tsf_information*) ;
 struct wl12xx_acx_fw_tsf_information* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int wl1271_cmd_interrogate (struct wl1271*,int ,struct wl12xx_acx_fw_tsf_information*,int,int) ;
 int wl1271_warning (char*) ;

int wl12xx_acx_tsf_info(struct wl1271 *wl, struct wl12xx_vif *wlvif,
   u64 *mactime)
{
 struct wl12xx_acx_fw_tsf_information *tsf_info;
 int ret;

 tsf_info = kzalloc(sizeof(*tsf_info), GFP_KERNEL);
 if (!tsf_info) {
  ret = -ENOMEM;
  goto out;
 }

 tsf_info->role_id = wlvif->role_id;

 ret = wl1271_cmd_interrogate(wl, ACX_TSF_INFO, tsf_info,
    sizeof(struct acx_header), sizeof(*tsf_info));
 if (ret < 0) {
  wl1271_warning("acx tsf info interrogate failed");
  goto out;
 }

 *mactime = le32_to_cpu(tsf_info->current_tsf_low) |
  ((u64) le32_to_cpu(tsf_info->current_tsf_high) << 32);

out:
 kfree(tsf_info);
 return ret;
}
