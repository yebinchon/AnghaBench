
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arche_platform_drvdata {scalar_t__ state; int platform_state_mutex; int dev; } ;
typedef int ssize_t ;


 scalar_t__ ARCHE_PLATFORM_STATE_ACTIVE ;
 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ;
 scalar_t__ ARCHE_PLATFORM_STATE_OFF ;
 scalar_t__ ARCHE_PLATFORM_STATE_STANDBY ;
 int EINVAL ;
 int apb_poweroff ;
 int arche_platform_coldboot_seq (struct arche_platform_drvdata*) ;
 int arche_platform_fw_flashing_seq (struct arche_platform_drvdata*) ;
 int arche_platform_poweroff_seq (struct arche_platform_drvdata*) ;
 int arche_platform_wd_irq_en (struct arche_platform_drvdata*) ;
 int dev_err (int ,char*) ;
 struct arche_platform_drvdata* dev_get_drvdata (struct device*) ;
 int dev_warn (int ,char*) ;
 int device_for_each_child (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t state_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct arche_platform_drvdata *arche_pdata = dev_get_drvdata(dev);
 int ret = 0;

 mutex_lock(&arche_pdata->platform_state_mutex);

 if (sysfs_streq(buf, "off")) {
  if (arche_pdata->state == ARCHE_PLATFORM_STATE_OFF)
   goto exit;


  device_for_each_child(arche_pdata->dev, ((void*)0), apb_poweroff);

  arche_platform_poweroff_seq(arche_pdata);

 } else if (sysfs_streq(buf, "active")) {
  if (arche_pdata->state == ARCHE_PLATFORM_STATE_ACTIVE)
   goto exit;




  device_for_each_child(arche_pdata->dev, ((void*)0), apb_poweroff);
  arche_platform_poweroff_seq(arche_pdata);

  arche_platform_wd_irq_en(arche_pdata);
  ret = arche_platform_coldboot_seq(arche_pdata);
  if (ret)
   goto exit;

 } else if (sysfs_streq(buf, "standby")) {
  if (arche_pdata->state == ARCHE_PLATFORM_STATE_STANDBY)
   goto exit;

  dev_warn(arche_pdata->dev, "standby state not supported\n");
 } else if (sysfs_streq(buf, "fw_flashing")) {
  if (arche_pdata->state == ARCHE_PLATFORM_STATE_FW_FLASHING)
   goto exit;
  arche_platform_poweroff_seq(arche_pdata);

  ret = arche_platform_fw_flashing_seq(arche_pdata);
  if (ret)
   goto exit;
 } else {
  dev_err(arche_pdata->dev, "unknown state\n");
  ret = -EINVAL;
 }

exit:
 mutex_unlock(&arche_pdata->platform_state_mutex);
 return ret ? ret : count;
}
