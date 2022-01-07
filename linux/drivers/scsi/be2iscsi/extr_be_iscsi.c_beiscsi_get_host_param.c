
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int state; } ;
struct Scsi_Host {int dummy; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;


 int BEISCSI_LOG_CONFIG ;




 int KERN_ERR ;
 int KERN_INFO ;
 int beiscsi_get_initiator_name (struct beiscsi_hba*,char*,int) ;
 int beiscsi_get_macaddr (char*,struct beiscsi_hba*) ;
 int beiscsi_get_port_speed (struct Scsi_Host*) ;
 int beiscsi_get_port_state (struct Scsi_Host*) ;
 int beiscsi_hba_is_online (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 char* iscsi_get_port_speed_name (struct Scsi_Host*) ;
 char* iscsi_get_port_state_name (struct Scsi_Host*) ;
 int iscsi_host_get_param (struct Scsi_Host*,int,char*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int sprintf (char*,char*,char*) ;

int beiscsi_get_host_param(struct Scsi_Host *shost,
      enum iscsi_host_param param, char *buf)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 int status = 0;

 if (!beiscsi_hba_is_online(phba)) {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BS_%d : HBA in error 0x%lx\n", phba->state);
  return 0;
 }
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_get_host_param, param = %d\n", param);

 switch (param) {
 case 131:
  status = beiscsi_get_macaddr(buf, phba);
  if (status < 0) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BS_%d : beiscsi_get_macaddr Failed\n");
   return 0;
  }
  break;
 case 130:

  status = beiscsi_get_initiator_name(phba, buf, 1);
  if (status < 0) {
   status = beiscsi_get_initiator_name(phba, buf, 0);
   if (status < 0) {
    beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
         "BS_%d : Retrieving Initiator Name Failed\n");
    status = 0;
   }
  }
  break;
 case 128:
  beiscsi_get_port_state(shost);
  status = sprintf(buf, "%s\n", iscsi_get_port_state_name(shost));
  break;
 case 129:
  beiscsi_get_port_speed(shost);
  status = sprintf(buf, "%s\n", iscsi_get_port_speed_name(shost));
  break;
 default:
  return iscsi_host_get_param(shost, param, buf);
 }
 return status;
}
