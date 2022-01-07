
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dev; } ;


 int dev_attr_bt_coex_state ;
 int dev_attr_hw_pg_ver ;
 int device_create_bin_file (int ,int *) ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int fwlog_attr ;
 int wl1271_error (char*) ;

int wlcore_sysfs_init(struct wl1271 *wl)
{
 int ret;


 ret = device_create_file(wl->dev, &dev_attr_bt_coex_state);
 if (ret < 0) {
  wl1271_error("failed to create sysfs file bt_coex_state");
  goto out;
 }


 ret = device_create_file(wl->dev, &dev_attr_hw_pg_ver);
 if (ret < 0) {
  wl1271_error("failed to create sysfs file hw_pg_ver");
  goto out_bt_coex_state;
 }


 ret = device_create_bin_file(wl->dev, &fwlog_attr);
 if (ret < 0) {
  wl1271_error("failed to create sysfs file fwlog");
  goto out_hw_pg_ver;
 }

 goto out;

out_hw_pg_ver:
 device_remove_file(wl->dev, &dev_attr_hw_pg_ver);

out_bt_coex_state:
 device_remove_file(wl->dev, &dev_attr_bt_coex_state);

out:
 return ret;
}
