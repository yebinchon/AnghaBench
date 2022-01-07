
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int firmware_state; int addl_fw_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int qla4xxx_get_firmware_state (struct scsi_qla_host*) ;
 int snprintf (char*,int ,char*,int,int ) ;
 struct scsi_qla_host* to_qla_host (int ) ;

__attribute__((used)) static ssize_t
qla4xxx_fw_state_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct scsi_qla_host *ha = to_qla_host(class_to_shost(dev));

 qla4xxx_get_firmware_state(ha);
 return snprintf(buf, PAGE_SIZE, "0x%08X%8X\n", ha->firmware_state,
   ha->addl_fw_state);
}
