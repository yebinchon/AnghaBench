
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int flags; } ;
struct iscsi_cls_host {int port_state; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;


 int AF_LINK_UP ;
 int ISCSI_PORT_STATE_DOWN ;
 int ISCSI_PORT_STATE_UP ;
 scalar_t__ test_bit (int ,int *) ;
 struct scsi_qla_host* to_qla_host (struct Scsi_Host*) ;

__attribute__((used)) static void qla4xxx_set_port_state(struct Scsi_Host *shost)
{
 struct scsi_qla_host *ha = to_qla_host(shost);
 struct iscsi_cls_host *ihost = shost->shost_data;
 uint32_t state = ISCSI_PORT_STATE_DOWN;

 if (test_bit(AF_LINK_UP, &ha->flags))
  state = ISCSI_PORT_STATE_UP;

 ihost->port_state = state;
}
