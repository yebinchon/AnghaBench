
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int reg_set; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int megasas_dump_sys_regs (int ,char*) ;

__attribute__((used)) static ssize_t
dump_system_regs_show(struct device *cdev,
          struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct megasas_instance *instance =
   (struct megasas_instance *)shost->hostdata;

 return megasas_dump_sys_regs(instance->reg_set, buf);
}
