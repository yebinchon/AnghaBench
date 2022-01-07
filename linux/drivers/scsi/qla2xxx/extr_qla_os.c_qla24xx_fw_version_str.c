
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int fw_major_version; int fw_minor_version; int fw_subminor_version; int fw_attributes; } ;


 int snprintf (char*,size_t,char*,int,int,int,int) ;

__attribute__((used)) static char *
qla24xx_fw_version_str(struct scsi_qla_host *vha, char *str, size_t size)
{
 struct qla_hw_data *ha = vha->hw;

 snprintf(str, size, "%d.%02d.%02d (%x)", ha->fw_major_version,
     ha->fw_minor_version, ha->fw_subminor_version, ha->fw_attributes);
 return str;
}
