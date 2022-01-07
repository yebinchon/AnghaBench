
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int addl_fw_state; } ;
struct iscsi_cls_host {int port_speed; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;






 int ISCSI_PORT_SPEED_100MBPS ;
 int ISCSI_PORT_SPEED_10GBPS ;
 int ISCSI_PORT_SPEED_10MBPS ;
 int ISCSI_PORT_SPEED_1GBPS ;
 int ISCSI_PORT_SPEED_UNKNOWN ;
 int qla4xxx_get_firmware_state (struct scsi_qla_host*) ;
 struct scsi_qla_host* to_qla_host (struct Scsi_Host*) ;

__attribute__((used)) static void qla4xxx_set_port_speed(struct Scsi_Host *shost)
{
 struct scsi_qla_host *ha = to_qla_host(shost);
 struct iscsi_cls_host *ihost = shost->shost_data;
 uint32_t speed = ISCSI_PORT_SPEED_UNKNOWN;

 qla4xxx_get_firmware_state(ha);

 switch (ha->addl_fw_state & 0x0F00) {
 case 129:
  speed = ISCSI_PORT_SPEED_10MBPS;
  break;
 case 131:
  speed = ISCSI_PORT_SPEED_100MBPS;
  break;
 case 128:
  speed = ISCSI_PORT_SPEED_1GBPS;
  break;
 case 130:
  speed = ISCSI_PORT_SPEED_10GBPS;
  break;
 }
 ihost->port_speed = speed;
}
