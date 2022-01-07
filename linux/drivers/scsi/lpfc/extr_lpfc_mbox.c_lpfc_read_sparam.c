
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct serv_parm {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int * vpi_ids; } ;
struct lpfc_dmabuf {int phys; int list; int virt; } ;
struct TYPE_13__ {int bdeSize; } ;
struct TYPE_14__ {TYPE_2__ f; } ;
struct TYPE_15__ {int addrLow; int addrHigh; TYPE_3__ tus; } ;
struct TYPE_16__ {TYPE_4__ sp64; } ;
struct TYPE_17__ {int vpi; TYPE_5__ un; } ;
struct TYPE_18__ {TYPE_6__ varRdSparm; } ;
struct TYPE_19__ {TYPE_7__ un; void* mbxCommand; int mbxOwner; } ;
struct TYPE_12__ {TYPE_8__ mb; } ;
struct TYPE_20__ {struct lpfc_dmabuf* ctx_buf; TYPE_1__ u; } ;
typedef TYPE_8__ MAILBOX_t ;
typedef TYPE_9__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_WARNING ;
 int LOG_MBOX ;
 scalar_t__ LPFC_SLI_REV3 ;
 void* MBX_READ_SPARM64 ;
 int OWN_HOST ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 int lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int memset (TYPE_9__*,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;

int
lpfc_read_sparam(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb, int vpi)
{
 struct lpfc_dmabuf *mp;
 MAILBOX_t *mb;

 mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));

 mb->mbxOwner = OWN_HOST;



 mp = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
 if (mp)
  mp->virt = lpfc_mbuf_alloc(phba, 0, &mp->phys);
 if (!mp || !mp->virt) {
  kfree(mp);
  mb->mbxCommand = MBX_READ_SPARM64;

  lpfc_printf_log(phba, KERN_WARNING, LOG_MBOX,
           "0301 READ_SPARAM: no buffers\n");
  return (1);
 }
 INIT_LIST_HEAD(&mp->list);
 mb->mbxCommand = MBX_READ_SPARM64;
 mb->un.varRdSparm.un.sp64.tus.f.bdeSize = sizeof (struct serv_parm);
 mb->un.varRdSparm.un.sp64.addrHigh = putPaddrHigh(mp->phys);
 mb->un.varRdSparm.un.sp64.addrLow = putPaddrLow(mp->phys);
 if (phba->sli_rev >= LPFC_SLI_REV3)
  mb->un.varRdSparm.vpi = phba->vpi_ids[vpi];


 pmb->ctx_buf = mp;

 return (0);
}
