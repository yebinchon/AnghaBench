
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int fc_flag; int fc_rscn_flush; int fc_rscn_id_cnt; TYPE_1__** fc_rscn_id_list; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_6__ {int resv; int domain; int area; int id; } ;
struct TYPE_7__ {int word; TYPE_2__ b; } ;
struct TYPE_8__ {TYPE_3__ un; } ;
struct TYPE_5__ {int* virt; } ;
typedef TYPE_4__ D_ID ;


 int ELS_CMD_MASK ;
 int FC_RSCN_DISCOVERY ;
 int Fabric_DID_MASK ;



 int RSCN_ADDRESS_FORMAT_MASK ;

 void* be32_to_cpu (int) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_rscn_payload_check(struct lpfc_vport *vport, uint32_t did)
{
 D_ID ns_did;
 D_ID rscn_did;
 uint32_t *lp;
 uint32_t payload_len, i;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 ns_did.un.word = did;


 if ((did & Fabric_DID_MASK) == Fabric_DID_MASK)
  return 0;


 if (vport->fc_flag & FC_RSCN_DISCOVERY)
  return did;

 spin_lock_irq(shost->host_lock);
 if (vport->fc_rscn_flush) {

  spin_unlock_irq(shost->host_lock);
  return 0;
 }

 vport->fc_rscn_flush = 1;
 spin_unlock_irq(shost->host_lock);
 for (i = 0; i < vport->fc_rscn_id_cnt; i++) {
  lp = vport->fc_rscn_id_list[i]->virt;
  payload_len = be32_to_cpu(*lp++ & ~ELS_CMD_MASK);
  payload_len -= sizeof(uint32_t);
  while (payload_len) {
   rscn_did.un.word = be32_to_cpu(*lp++);
   payload_len -= sizeof(uint32_t);
   switch (rscn_did.un.b.resv & RSCN_ADDRESS_FORMAT_MASK) {
   case 128:
    if ((ns_did.un.b.domain == rscn_did.un.b.domain)
        && (ns_did.un.b.area == rscn_did.un.b.area)
        && (ns_did.un.b.id == rscn_did.un.b.id))
     goto return_did_out;
    break;
   case 131:
    if ((ns_did.un.b.domain == rscn_did.un.b.domain)
        && (ns_did.un.b.area == rscn_did.un.b.area))
     goto return_did_out;
    break;
   case 130:
    if (ns_did.un.b.domain == rscn_did.un.b.domain)
     goto return_did_out;
    break;
   case 129:
    goto return_did_out;
   }
  }
 }

 vport->fc_rscn_flush = 0;
 return 0;
return_did_out:

 vport->fc_rscn_flush = 0;
 return did;
}
