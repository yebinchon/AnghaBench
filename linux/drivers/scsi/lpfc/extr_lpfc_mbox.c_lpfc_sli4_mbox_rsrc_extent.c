
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_mbx_nembed_rsrc_extent {int word4; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_8__ {struct lpfc_mbx_nembed_rsrc_extent req; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ alloc_rsrc_extents; } ;
struct TYPE_11__ {TYPE_4__ un; } ;
struct TYPE_12__ {TYPE_5__ mqe; } ;
struct lpfcMboxq {TYPE_6__ u; TYPE_1__* sge_array; } ;
struct TYPE_7__ {void** addr; } ;


 int KERN_ERR ;
 int LOG_MBOX ;




 int LPFC_SLI4_MBX_EMBED ;
 int LPFC_SLI4_MBX_NEMBED ;
 int bf_set (int ,struct lpfc_mbx_nembed_rsrc_extent*,int ) ;
 int lpfc_mbx_alloc_rsrc_extents_cnt ;
 int lpfc_mbx_alloc_rsrc_extents_type ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli_config_mbox_opcode_get (struct lpfc_hba*,struct lpfcMboxq*) ;
 int lpfc_sli_pcimem_bcopy (int *,int *,int) ;

int
lpfc_sli4_mbox_rsrc_extent(struct lpfc_hba *phba, struct lpfcMboxq *mbox,
      uint16_t exts_count, uint16_t rsrc_type, bool emb)
{
 uint8_t opcode = 0;
 struct lpfc_mbx_nembed_rsrc_extent *n_rsrc_extnt = ((void*)0);
 void *virtaddr = ((void*)0);


 if (emb == LPFC_SLI4_MBX_NEMBED) {

  virtaddr = mbox->sge_array->addr[0];
  if (virtaddr == ((void*)0))
   return 1;
  n_rsrc_extnt = (struct lpfc_mbx_nembed_rsrc_extent *) virtaddr;
 }





 if (emb == LPFC_SLI4_MBX_EMBED)
  bf_set(lpfc_mbx_alloc_rsrc_extents_type,
         &mbox->u.mqe.un.alloc_rsrc_extents.u.req,
         rsrc_type);
 else {

  bf_set(lpfc_mbx_alloc_rsrc_extents_type,
         n_rsrc_extnt, rsrc_type);
  lpfc_sli_pcimem_bcopy(&n_rsrc_extnt->word4,
          &n_rsrc_extnt->word4,
          sizeof(uint32_t));
 }


 opcode = lpfc_sli_config_mbox_opcode_get(phba, mbox);
 switch (opcode) {
 case 131:
  if (emb == LPFC_SLI4_MBX_EMBED)
   bf_set(lpfc_mbx_alloc_rsrc_extents_cnt,
          &mbox->u.mqe.un.alloc_rsrc_extents.u.req,
          exts_count);
  else
   bf_set(lpfc_mbx_alloc_rsrc_extents_cnt,
          n_rsrc_extnt, exts_count);
  break;
 case 129:
 case 128:
 case 130:

  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
    "2929 Resource Extent Opcode x%x is "
    "unsupported\n", opcode);
  return 1;
 }

 return 0;
}
