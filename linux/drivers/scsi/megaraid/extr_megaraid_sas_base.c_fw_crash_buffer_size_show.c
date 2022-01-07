
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int fw_crash_buffer_size; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 unsigned long PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,unsigned long,char*,unsigned long) ;

__attribute__((used)) static ssize_t
fw_crash_buffer_size_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct megasas_instance *instance =
  (struct megasas_instance *) shost->hostdata;

 return snprintf(buf, PAGE_SIZE, "%ld\n", (unsigned long)
  ((instance->fw_crash_buffer_size) * 1024 * 1024)/PAGE_SIZE);
}
