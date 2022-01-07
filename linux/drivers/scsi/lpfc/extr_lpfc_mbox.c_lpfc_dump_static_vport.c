
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct static_vport_info {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; } ;
struct lpfc_dmabuf {int phys; int list; TYPE_5__* virt; } ;
struct TYPE_10__ {int cv; int word_cnt; int sli4_length; int region_id; int entry_index; int type; } ;
struct TYPE_11__ {TYPE_2__ varDmp; int * varWords; } ;
struct TYPE_12__ {TYPE_3__ un; int mbxOwner; int mbxCommand; } ;
struct TYPE_9__ {TYPE_4__ mb; } ;
struct TYPE_13__ {int * ctx_buf; TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int DMP_NV_PARAMS ;
 int DMP_REGION_VPORT ;
 int DMP_RSP_SIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LPFC_BPL_SIZE ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_DUMP_MEMORY ;
 int OWN_HOST ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 TYPE_5__* lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int memset (TYPE_5__*,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;

int
lpfc_dump_static_vport(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb,
  uint16_t offset)
{
 MAILBOX_t *mb;
 struct lpfc_dmabuf *mp;

 mb = &pmb->u.mb;


 memset(pmb, 0, sizeof(LPFC_MBOXQ_t));
 mb->mbxCommand = MBX_DUMP_MEMORY;
 mb->un.varDmp.type = DMP_NV_PARAMS;
 mb->un.varDmp.entry_index = offset;
 mb->un.varDmp.region_id = DMP_REGION_VPORT;
 mb->mbxOwner = OWN_HOST;


 if (phba->sli_rev != LPFC_SLI_REV4) {
  mb->un.varDmp.cv = 1;
  mb->un.varDmp.word_cnt = DMP_RSP_SIZE/sizeof(uint32_t);
  return 0;
 }


 mp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (mp)
  mp->virt = lpfc_mbuf_alloc(phba, 0, &mp->phys);

 if (!mp || !mp->virt) {
  kfree(mp);
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
   "2605 lpfc_dump_static_vport: memory"
   " allocation failed\n");
  return 1;
 }
 memset(mp->virt, 0, LPFC_BPL_SIZE);
 INIT_LIST_HEAD(&mp->list);

 pmb->ctx_buf = (uint8_t *)mp;
 mb->un.varWords[3] = putPaddrLow(mp->phys);
 mb->un.varWords[4] = putPaddrHigh(mp->phys);
 mb->un.varDmp.sli4_length = sizeof(struct static_vport_info);

 return 0;
}
