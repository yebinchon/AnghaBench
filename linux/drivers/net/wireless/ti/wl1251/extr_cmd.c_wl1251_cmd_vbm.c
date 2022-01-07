
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ length; void* identity; int pvb_field; void* bitmap_ctrl; } ;
struct wl1251_cmd_vbm_update {int len; TYPE_1__ tim; } ;
struct wl1251 {int dummy; } ;


 int CMD_VBM ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PARTIAL_VBM_MAX ;
 int cpu_to_le16 (int ) ;
 int kfree (struct wl1251_cmd_vbm_update*) ;
 struct wl1251_cmd_vbm_update* kzalloc (int,int ) ;
 int memcpy (int ,void*,int ) ;
 int wl1251_cmd_send (struct wl1251*,int ,struct wl1251_cmd_vbm_update*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_error (char*) ;
 int wl1251_warning (char*,int ,int ) ;

int wl1251_cmd_vbm(struct wl1251 *wl, u8 identity,
     void *bitmap, u16 bitmap_len, u8 bitmap_control)
{
 struct wl1251_cmd_vbm_update *vbm;
 int ret;

 wl1251_debug(DEBUG_CMD, "cmd vbm");

 vbm = kzalloc(sizeof(*vbm), GFP_KERNEL);
 if (!vbm) {
  ret = -ENOMEM;
  goto out;
 }


 vbm->tim.bitmap_ctrl = bitmap_control;
 if (bitmap_len > PARTIAL_VBM_MAX) {
  wl1251_warning("cmd vbm len is %d B, truncating to %d",
          bitmap_len, PARTIAL_VBM_MAX);
  bitmap_len = PARTIAL_VBM_MAX;
 }
 memcpy(vbm->tim.pvb_field, bitmap, bitmap_len);
 vbm->tim.identity = identity;
 vbm->tim.length = bitmap_len + 3;

 vbm->len = cpu_to_le16(bitmap_len + 5);

 ret = wl1251_cmd_send(wl, CMD_VBM, vbm, sizeof(*vbm));
 if (ret < 0) {
  wl1251_error("VBM command failed");
  goto out;
 }

out:
 kfree(vbm);
 return ret;
}
