
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_revision {int fw_version; } ;


 int ACX_FW_REV ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_revision*) ;
 struct acx_revision* kzalloc (int,int ) ;
 int min (size_t,int) ;
 int strncpy (char*,int ,int) ;
 int wl1251_cmd_interrogate (struct wl1251*,int ,struct acx_revision*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*) ;

int wl1251_acx_fw_version(struct wl1251 *wl, char *buf, size_t len)
{
 struct acx_revision *rev;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx fw rev");

 rev = kzalloc(sizeof(*rev), GFP_KERNEL);
 if (!rev)
  return -ENOMEM;

 ret = wl1251_cmd_interrogate(wl, ACX_FW_REV, rev, sizeof(*rev));
 if (ret < 0) {
  wl1251_warning("ACX_FW_REV interrogate failed");
  goto out;
 }


 strncpy(buf, rev->fw_version, min(len, sizeof(rev->fw_version)));






 buf[min(len, sizeof(rev->fw_version)) - 1] = '\0';

out:
 kfree(rev);
 return ret;
}
