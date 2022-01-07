
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct lpfc_hba {int fc_eventTag; } ;
struct TYPE_9__ {int eventTag; } ;
struct TYPE_10__ {TYPE_2__ varClearLA; } ;
struct TYPE_11__ {int mbxOwner; int mbxCommand; TYPE_3__ un; } ;
struct TYPE_8__ {TYPE_4__ mb; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int MBX_CLEAR_LA ;
 int OWN_HOST ;
 int memset (TYPE_5__*,int ,int) ;

void
lpfc_clear_la(struct lpfc_hba * phba, LPFC_MBOXQ_t * pmb)
{
 MAILBOX_t *mb;

 mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));

 mb->un.varClearLA.eventTag = phba->fc_eventTag;
 mb->mbxCommand = MBX_CLEAR_LA;
 mb->mbxOwner = OWN_HOST;
 return;
}
