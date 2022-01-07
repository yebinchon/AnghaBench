
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int clean_address_bit; } ;
struct serv_parm {TYPE_1__ cmn; int nodeName; int portName; } ;
struct lpfc_vport {scalar_t__ fc_prevDID; scalar_t__ fc_myDID; int vport_flag; int fc_flag; int fabric_nodename; int fabric_portname; struct lpfc_hba* phba; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {scalar_t__ cfg_delay_discovery; } ;
struct Scsi_Host {int host_lock; } ;


 int FAWWPN_PARAM_CHG ;
 int FC_DISC_DELAYED ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint8_t
lpfc_check_clean_addr_bit(struct lpfc_vport *vport,
  struct serv_parm *sp)
{
 struct lpfc_hba *phba = vport->phba;
 uint8_t fabric_param_changed = 0;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if ((vport->fc_prevDID != vport->fc_myDID) ||
  memcmp(&vport->fabric_portname, &sp->portName,
   sizeof(struct lpfc_name)) ||
  memcmp(&vport->fabric_nodename, &sp->nodeName,
   sizeof(struct lpfc_name)) ||
  (vport->vport_flag & FAWWPN_PARAM_CHG)) {
  fabric_param_changed = 1;
  vport->vport_flag &= ~FAWWPN_PARAM_CHG;
 }
 if (fabric_param_changed && !sp->cmn.clean_address_bit &&
     (vport->fc_prevDID || phba->cfg_delay_discovery)) {
  spin_lock_irq(shost->host_lock);
  vport->fc_flag |= FC_DISC_DELAYED;
  spin_unlock_irq(shost->host_lock);
 }

 return fabric_param_changed;
}
