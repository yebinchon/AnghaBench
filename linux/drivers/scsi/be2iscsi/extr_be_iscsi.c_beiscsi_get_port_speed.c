
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_host {int port_speed; } ;
struct beiscsi_hba {int port_speed; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;
 int ISCSI_PORT_SPEED_100MBPS ;
 int ISCSI_PORT_SPEED_10GBPS ;
 int ISCSI_PORT_SPEED_10MBPS ;
 int ISCSI_PORT_SPEED_1GBPS ;
 int ISCSI_PORT_SPEED_25GBPS ;
 int ISCSI_PORT_SPEED_40GBPS ;
 int ISCSI_PORT_SPEED_UNKNOWN ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;

__attribute__((used)) static void beiscsi_get_port_speed(struct Scsi_Host *shost)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 struct iscsi_cls_host *ihost = shost->shost_data;

 switch (phba->port_speed) {
 case 131:
  ihost->port_speed = ISCSI_PORT_SPEED_10MBPS;
  break;
 case 133:
  ihost->port_speed = ISCSI_PORT_SPEED_100MBPS;
  break;
 case 130:
  ihost->port_speed = ISCSI_PORT_SPEED_1GBPS;
  break;
 case 132:
  ihost->port_speed = ISCSI_PORT_SPEED_10GBPS;
  break;
 case 129:
  ihost->port_speed = ISCSI_PORT_SPEED_25GBPS;
  break;
 case 128:
  ihost->port_speed = ISCSI_PORT_SPEED_40GBPS;
  break;
 default:
  ihost->port_speed = ISCSI_PORT_SPEED_UNKNOWN;
 }
}
