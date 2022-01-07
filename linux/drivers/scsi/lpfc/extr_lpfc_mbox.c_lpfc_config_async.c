
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {int dummy; } ;
struct TYPE_9__ {int ring; } ;
struct TYPE_10__ {TYPE_2__ varCfgAsyncEvent; } ;
struct TYPE_11__ {int mbxOwner; TYPE_3__ un; int mbxCommand; } ;
struct TYPE_8__ {TYPE_4__ mb; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int MBX_ASYNCEVT_ENABLE ;
 int OWN_HOST ;
 int memset (TYPE_5__*,int ,int) ;

void
lpfc_config_async(struct lpfc_hba * phba, LPFC_MBOXQ_t * pmb,
  uint32_t ring)
{
 MAILBOX_t *mb;

 mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));
 mb->mbxCommand = MBX_ASYNCEVT_ENABLE;
 mb->un.varCfgAsyncEvent.ring = ring;
 mb->mbxOwner = OWN_HOST;
 return;
}
