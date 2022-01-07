
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1251 {int dummy; } ;
struct acx_aid {int aid; } ;


 int ACX_AID ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_aid*) ;
 struct acx_aid* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_aid*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_aid(struct wl1251 *wl, u16 aid)
{
 struct acx_aid *acx_aid;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx aid");

 acx_aid = kzalloc(sizeof(*acx_aid), GFP_KERNEL);
 if (!acx_aid)
  return -ENOMEM;

 acx_aid->aid = aid;

 ret = wl1251_cmd_configure(wl, ACX_AID, acx_aid, sizeof(*acx_aid));
 if (ret < 0) {
  wl1251_warning("failed to set aid: %d", ret);
  goto out;
 }

out:
 kfree(acx_aid);
 return ret;
}
