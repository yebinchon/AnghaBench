
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dev; } ;


 int dev_attr_bt_coex_state ;
 int dev_attr_hw_pg_ver ;
 int device_remove_bin_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int fwlog_attr ;

void wlcore_sysfs_free(struct wl1271 *wl)
{
 device_remove_bin_file(wl->dev, &fwlog_attr);

 device_remove_file(wl->dev, &dev_attr_hw_pg_ver);

 device_remove_file(wl->dev, &dev_attr_bt_coex_state);
}
