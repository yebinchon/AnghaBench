
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
 int brcm_usb_init_get_dual_select (int *) ;
 struct brcm_usb_phy_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;
 int sysfs_lock ;
 char* value_to_name (int *,int ,int) ;

__attribute__((used)) static ssize_t dual_select_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 int value;

 mutex_lock(&sysfs_lock);
 value = brcm_usb_init_get_dual_select(&priv->ini);
 mutex_unlock(&sysfs_lock);
 return sprintf(buf, "%s\n",
  value_to_name(&brcm_dual_mode_to_name[0],
         ARRAY_SIZE(brcm_dual_mode_to_name),
         value));
}
