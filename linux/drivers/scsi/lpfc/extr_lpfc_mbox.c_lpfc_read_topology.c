
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; int list; } ;
struct TYPE_12__ {int bdeSize; } ;
struct TYPE_13__ {TYPE_2__ f; } ;
struct TYPE_14__ {int addrLow; int addrHigh; TYPE_3__ tus; } ;
struct TYPE_15__ {TYPE_4__ lilpBde64; } ;
struct TYPE_16__ {TYPE_5__ varReadTop; } ;
struct TYPE_17__ {int mbxOwner; TYPE_6__ un; int mbxCommand; } ;
struct TYPE_11__ {TYPE_7__ mb; } ;
struct TYPE_18__ {int * ctx_buf; TYPE_1__ u; } ;
typedef TYPE_7__ MAILBOX_t ;
typedef TYPE_8__ LPFC_MBOXQ_t ;


 int INIT_LIST_HEAD (int *) ;
 int LPFC_ALPA_MAP_SIZE ;
 int MBX_READ_TOPOLOGY ;
 int OWN_HOST ;
 int memset (TYPE_8__*,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;

int
lpfc_read_topology(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb,
     struct lpfc_dmabuf *mp)
{
 MAILBOX_t *mb;

 mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));

 INIT_LIST_HEAD(&mp->list);
 mb->mbxCommand = MBX_READ_TOPOLOGY;
 mb->un.varReadTop.lilpBde64.tus.f.bdeSize = LPFC_ALPA_MAP_SIZE;
 mb->un.varReadTop.lilpBde64.addrHigh = putPaddrHigh(mp->phys);
 mb->un.varReadTop.lilpBde64.addrLow = putPaddrLow(mp->phys);




 pmb->ctx_buf = (uint8_t *)mp;
 mb->mbxOwner = OWN_HOST;
 return (0);
}
