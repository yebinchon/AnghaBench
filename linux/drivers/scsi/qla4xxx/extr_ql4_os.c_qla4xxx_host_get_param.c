
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char ip_address; } ;
struct scsi_qla_host {char* name_string; TYPE_1__ ip_config; int my_mac; } ;
struct Scsi_Host {int dummy; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;


 int ENOSYS ;





 int MAC_ADDR_LEN ;
 char* iscsi_get_port_speed_name (struct Scsi_Host*) ;
 char* iscsi_get_port_state_name (struct Scsi_Host*) ;
 int qla4xxx_set_port_speed (struct Scsi_Host*) ;
 int qla4xxx_set_port_state (struct Scsi_Host*) ;
 int sprintf (char*,char*,char*) ;
 int sysfs_format_mac (char*,int ,int ) ;
 struct scsi_qla_host* to_qla_host (struct Scsi_Host*) ;

__attribute__((used)) static int qla4xxx_host_get_param(struct Scsi_Host *shost,
      enum iscsi_host_param param, char *buf)
{
 struct scsi_qla_host *ha = to_qla_host(shost);
 int len;

 switch (param) {
 case 132:
  len = sysfs_format_mac(buf, ha->my_mac, MAC_ADDR_LEN);
  break;
 case 130:
  len = sprintf(buf, "%pI4\n", &ha->ip_config.ip_address);
  break;
 case 131:
  len = sprintf(buf, "%s\n", ha->name_string);
  break;
 case 128:
  qla4xxx_set_port_state(shost);
  len = sprintf(buf, "%s\n", iscsi_get_port_state_name(shost));
  break;
 case 129:
  qla4xxx_set_port_speed(shost);
  len = sprintf(buf, "%s\n", iscsi_get_port_speed_name(shost));
  break;
 default:
  return -ENOSYS;
 }

 return len;
}
