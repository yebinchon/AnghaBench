
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int fw_major_version; int fw_minor_version; int fw_subminor_version; int fw_attributes; } ;


 int BIT_9 ;
 int snprintf (char*,size_t,char*,int,int,int) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static char *
qla2x00_fw_version_str(struct scsi_qla_host *vha, char *str, size_t size)
{
 char un_str[10];
 struct qla_hw_data *ha = vha->hw;

 snprintf(str, size, "%d.%02d.%02d ", ha->fw_major_version,
     ha->fw_minor_version, ha->fw_subminor_version);

 if (ha->fw_attributes & BIT_9) {
  strcat(str, "FLX");
  return (str);
 }

 switch (ha->fw_attributes & 0xFF) {
 case 0x7:
  strcat(str, "EF");
  break;
 case 0x17:
  strcat(str, "TP");
  break;
 case 0x37:
  strcat(str, "IP");
  break;
 case 0x77:
  strcat(str, "VI");
  break;
 default:
  sprintf(un_str, "(%x)", ha->fw_attributes);
  strcat(str, un_str);
  break;
 }
 if (ha->fw_attributes & 0x100)
  strcat(str, "X");

 return (str);
}
