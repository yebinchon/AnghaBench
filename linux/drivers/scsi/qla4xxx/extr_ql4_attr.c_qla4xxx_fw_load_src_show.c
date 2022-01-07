
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_load_source; } ;
struct scsi_qla_host {TYPE_1__ fw_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;
 struct scsi_qla_host* to_qla_host (int ) ;

__attribute__((used)) static ssize_t
qla4xxx_fw_load_src_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct scsi_qla_host *ha = to_qla_host(class_to_shost(dev));
 char *load_src = ((void*)0);

 switch (ha->fw_info.fw_load_source) {
 case 1:
  load_src = "Flash Primary";
  break;
 case 2:
  load_src = "Flash Secondary";
  break;
 case 3:
  load_src = "Host Download";
  break;
 }

 return snprintf(buf, PAGE_SIZE, "%s\n", load_src);
}
