
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint16_t ;
struct lpfc_hba {scalar_t__ sli_rev; int * vpi_ids; } ;
struct TYPE_8__ {int sli4_vpi; int vpi; } ;
struct TYPE_9__ {TYPE_1__ varUnregVpi; } ;
struct TYPE_11__ {int mbxOwner; int mbxCommand; TYPE_2__ un; } ;
struct TYPE_10__ {TYPE_4__ mb; } ;
struct TYPE_12__ {TYPE_3__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 scalar_t__ LPFC_SLI_REV3 ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_UNREG_VPI ;
 int OWN_HOST ;
 int memset (TYPE_5__*,int ,int) ;

void
lpfc_unreg_vpi(struct lpfc_hba *phba, uint16_t vpi, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));

 if (phba->sli_rev == LPFC_SLI_REV3)
  mb->un.varUnregVpi.vpi = phba->vpi_ids[vpi];
 else if (phba->sli_rev >= LPFC_SLI_REV4)
  mb->un.varUnregVpi.sli4_vpi = phba->vpi_ids[vpi];

 mb->mbxCommand = MBX_UNREG_VPI;
 mb->mbxOwner = OWN_HOST;
 return;

}
