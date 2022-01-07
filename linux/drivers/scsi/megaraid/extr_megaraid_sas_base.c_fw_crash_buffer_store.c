
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int fw_crash_buffer_offset; int crashdump_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
fw_crash_buffer_store(struct device *cdev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct megasas_instance *instance =
  (struct megasas_instance *) shost->hostdata;
 int val = 0;
 unsigned long flags;

 if (kstrtoint(buf, 0, &val) != 0)
  return -EINVAL;

 spin_lock_irqsave(&instance->crashdump_lock, flags);
 instance->fw_crash_buffer_offset = val;
 spin_unlock_irqrestore(&instance->crashdump_lock, flags);
 return strlen(buf);
}
