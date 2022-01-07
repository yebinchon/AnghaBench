
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int ldio_outstanding; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int atomic_read (int *) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
ldio_outstanding_show(struct device *cdev, struct device_attribute *attr,
 char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct megasas_instance *instance = (struct megasas_instance *)shost->hostdata;

 return snprintf(buf, PAGE_SIZE, "%d\n", atomic_read(&instance->ldio_outstanding));
}
