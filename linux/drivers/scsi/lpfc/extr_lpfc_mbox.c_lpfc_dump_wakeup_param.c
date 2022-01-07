
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct lpfc_hba {scalar_t__ sli_rev; } ;
struct TYPE_9__ {int cv; scalar_t__ resp_offset; scalar_t__ co; int word_cnt; int region_id; scalar_t__ entry_index; int type; } ;
struct TYPE_10__ {TYPE_2__ varDmp; } ;
struct TYPE_11__ {TYPE_3__ un; int mbxOwner; int mbxCommand; } ;
struct TYPE_8__ {TYPE_4__ mb; } ;
struct TYPE_12__ {void* ctx_buf; TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int DMP_NV_PARAMS ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_DUMP_MEMORY ;
 int OWN_HOST ;
 int WAKE_UP_PARMS_REGION_ID ;
 int WAKE_UP_PARMS_WORD_SIZE ;
 int memset (TYPE_5__*,int ,int) ;

void
lpfc_dump_wakeup_param(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb;
 void *ctx;

 mb = &pmb->u.mb;

 ctx = pmb->ctx_buf;


 memset(pmb, 0, sizeof(LPFC_MBOXQ_t));
 mb->mbxCommand = MBX_DUMP_MEMORY;
 mb->mbxOwner = OWN_HOST;
 mb->un.varDmp.cv = 1;
 mb->un.varDmp.type = DMP_NV_PARAMS;
 if (phba->sli_rev < LPFC_SLI_REV4)
  mb->un.varDmp.entry_index = 0;
 mb->un.varDmp.region_id = WAKE_UP_PARMS_REGION_ID;
 mb->un.varDmp.word_cnt = WAKE_UP_PARMS_WORD_SIZE;
 mb->un.varDmp.co = 0;
 mb->un.varDmp.resp_offset = 0;
 pmb->ctx_buf = ctx;
 return;
}
