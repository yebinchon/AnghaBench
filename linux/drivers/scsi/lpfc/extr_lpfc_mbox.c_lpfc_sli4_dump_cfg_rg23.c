
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; int list; struct lpfcMboxq* virt; } ;
struct TYPE_6__ {int sli4_length; int region_id; int type; } ;
struct TYPE_7__ {int * varWords; TYPE_2__ varDmp; } ;
struct TYPE_8__ {TYPE_3__ un; int mbxCommand; } ;
struct TYPE_5__ {TYPE_4__ mb; } ;
struct lpfcMboxq {int * ctx_buf; TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;


 int DMP_NV_PARAMS ;
 int DMP_REGION_23 ;
 int DMP_RGN23_SIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_WARNING ;
 int LOG_MBOX ;
 int LPFC_BPL_SIZE ;
 int MBX_DUMP_MEMORY ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 struct lpfcMboxq* lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int memset (struct lpfcMboxq*,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;

int
lpfc_sli4_dump_cfg_rg23(struct lpfc_hba *phba, struct lpfcMboxq *mbox)
{
 struct lpfc_dmabuf *mp = ((void*)0);
 MAILBOX_t *mb;

 memset(mbox, 0, sizeof(*mbox));
 mb = &mbox->u.mb;

 mp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (mp)
  mp->virt = lpfc_mbuf_alloc(phba, 0, &mp->phys);

 if (!mp || !mp->virt) {
  kfree(mp);

  lpfc_printf_log(phba, KERN_WARNING, LOG_MBOX,
   "2569 lpfc dump config region 23: memory"
   " allocation failed\n");
  return 1;
 }

 memset(mp->virt, 0, LPFC_BPL_SIZE);
 INIT_LIST_HEAD(&mp->list);


 mbox->ctx_buf = (uint8_t *)mp;

 mb->mbxCommand = MBX_DUMP_MEMORY;
 mb->un.varDmp.type = DMP_NV_PARAMS;
 mb->un.varDmp.region_id = DMP_REGION_23;
 mb->un.varDmp.sli4_length = DMP_RGN23_SIZE;
 mb->un.varWords[3] = putPaddrLow(mp->phys);
 mb->un.varWords[4] = putPaddrHigh(mp->phys);
 return 0;
}
