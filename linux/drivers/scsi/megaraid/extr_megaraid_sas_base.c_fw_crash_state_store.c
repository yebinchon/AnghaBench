
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {int fw_crash_state; TYPE_1__* pdev; int crashdump_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int AVAILABLE ;
 int COPIED ;
 int COPY_ERROR ;
 int EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int megasas_free_host_crash_buffer (struct megasas_instance*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
fw_crash_state_store(struct device *cdev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct megasas_instance *instance =
  (struct megasas_instance *) shost->hostdata;
 int val = 0;
 unsigned long flags;

 if (kstrtoint(buf, 0, &val) != 0)
  return -EINVAL;

 if ((val <= AVAILABLE || val > COPY_ERROR)) {
  dev_err(&instance->pdev->dev, "application updates invalid "
   "firmware crash state\n");
  return -EINVAL;
 }

 instance->fw_crash_state = val;

 if ((val == COPIED) || (val == COPY_ERROR)) {
  spin_lock_irqsave(&instance->crashdump_lock, flags);
  megasas_free_host_crash_buffer(instance);
  spin_unlock_irqrestore(&instance->crashdump_lock, flags);
  if (val == COPY_ERROR)
   dev_info(&instance->pdev->dev, "application failed to "
    "copy Firmware crash dump\n");
  else
   dev_info(&instance->pdev->dev, "Firmware crash dump "
    "copied successfully\n");
 }
 return strlen(buf);
}
