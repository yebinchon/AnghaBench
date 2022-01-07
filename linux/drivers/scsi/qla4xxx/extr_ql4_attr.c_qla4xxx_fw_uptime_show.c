
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int fw_uptime_secs; int fw_uptime_msecs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int qla4xxx_about_firmware (struct scsi_qla_host*) ;
 int snprintf (char*,int ,char*,int,int) ;
 struct scsi_qla_host* to_qla_host (int ) ;

__attribute__((used)) static ssize_t
qla4xxx_fw_uptime_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct scsi_qla_host *ha = to_qla_host(class_to_shost(dev));
 qla4xxx_about_firmware(ha);
 return snprintf(buf, PAGE_SIZE, "%u.%u secs\n", ha->fw_uptime_secs,
   ha->fw_uptime_msecs);
}
