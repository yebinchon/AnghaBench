
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {char* model_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;
 struct scsi_qla_host* to_qla_host (int ) ;

__attribute__((used)) static ssize_t
qla4xxx_hba_model_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct scsi_qla_host *ha = to_qla_host(class_to_shost(dev));

 return snprintf(buf, PAGE_SIZE, "%s\n", ha->model_name);
}
