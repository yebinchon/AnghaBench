
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_host {int port_state; } ;
struct beiscsi_hba {int state; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;


 int BEISCSI_HBA_LINK_UP ;
 int ISCSI_PORT_STATE_DOWN ;
 int ISCSI_PORT_STATE_UP ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void beiscsi_get_port_state(struct Scsi_Host *shost)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 struct iscsi_cls_host *ihost = shost->shost_data;

 ihost->port_state = test_bit(BEISCSI_HBA_LINK_UP, &phba->state) ?
  ISCSI_PORT_STATE_UP : ISCSI_PORT_STATE_DOWN;
}
