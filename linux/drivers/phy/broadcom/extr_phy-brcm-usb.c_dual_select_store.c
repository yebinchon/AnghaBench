
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct brcm_usb_phy_data {int ini; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 int * brcm_dual_mode_to_name ;
 int brcm_usb_init_set_dual_select (int *,int) ;
 struct brcm_usb_phy_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int name_to_value (int *,int ,char const*,int*) ;
 int sysfs_lock ;

__attribute__((used)) static ssize_t dual_select_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 int value;
 int res;

 mutex_lock(&sysfs_lock);
 res = name_to_value(&brcm_dual_mode_to_name[0],
       ARRAY_SIZE(brcm_dual_mode_to_name), buf, &value);
 if (!res) {
  brcm_usb_init_set_dual_select(&priv->ini, value);
  res = len;
 }
 mutex_unlock(&sysfs_lock);
 return res;
}
