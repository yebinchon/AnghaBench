
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int sg_enabled; int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct wl1271* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t wl1271_sysfs_show_bt_coex_state(struct device *dev,
            struct device_attribute *attr,
            char *buf)
{
 struct wl1271 *wl = dev_get_drvdata(dev);
 ssize_t len;

 len = PAGE_SIZE;

 mutex_lock(&wl->mutex);
 len = snprintf(buf, len, "%d\n\n0 - off\n1 - on\n",
         wl->sg_enabled);
 mutex_unlock(&wl->mutex);

 return len;

}
