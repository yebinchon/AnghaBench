
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* hw; } ;
struct qla27xx_fwdt_template {int* firmware_version; } ;
struct TYPE_2__ {int fw_major_version; int fw_minor_version; int fw_subminor_version; int fw_attributes_h; int fw_attributes; int* fw_attributes_ext; } ;



__attribute__((used)) static void
qla27xx_firmware_info(struct scsi_qla_host *vha,
    struct qla27xx_fwdt_template *tmp)
{
 tmp->firmware_version[0] = vha->hw->fw_major_version;
 tmp->firmware_version[1] = vha->hw->fw_minor_version;
 tmp->firmware_version[2] = vha->hw->fw_subminor_version;
 tmp->firmware_version[3] =
     vha->hw->fw_attributes_h << 16 | vha->hw->fw_attributes;
 tmp->firmware_version[4] =
     vha->hw->fw_attributes_ext[1] << 16 | vha->hw->fw_attributes_ext[0];
}
