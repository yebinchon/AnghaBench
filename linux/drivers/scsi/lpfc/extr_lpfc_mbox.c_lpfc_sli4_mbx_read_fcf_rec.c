
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union lpfc_sli4_cfg_shdr {int dummy; } lpfc_sli4_cfg_shdr ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_mbx_sge {int dummy; } ;
struct TYPE_4__ {int request; } ;
struct lpfc_mbx_read_fcf_tbl {TYPE_2__ u; } ;
struct lpfc_hba {int dummy; } ;
struct lpfcMboxq {TYPE_1__* sge_array; } ;
struct fcf_record {int dummy; } ;
struct TYPE_3__ {void** addr; } ;


 int ENOMEM ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LPFC_MBOX_OPCODE_FCOE_READ_FCF_TABLE ;
 int LPFC_MBOX_SUBSYSTEM_FCOE ;
 int LPFC_SLI4_MBX_NEMBED ;
 int bf_set (int ,int *,int ) ;
 int lpfc_mbx_read_fcf_tbl_indx ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int) ;
 int lpfc_sli4_config (struct lpfc_hba*,struct lpfcMboxq*,int ,int ,int,int ) ;
 int lpfc_sli4_mbx_sge_get (struct lpfcMboxq*,int ,struct lpfc_mbx_sge*) ;
 int lpfc_sli_pcimem_bcopy (int *,int *,int) ;

int
lpfc_sli4_mbx_read_fcf_rec(struct lpfc_hba *phba,
      struct lpfcMboxq *mboxq,
      uint16_t fcf_index)
{
 void *virt_addr;
 uint8_t *bytep;
 struct lpfc_mbx_sge sge;
 uint32_t alloc_len, req_len;
 struct lpfc_mbx_read_fcf_tbl *read_fcf;

 if (!mboxq)
  return -ENOMEM;

 req_len = sizeof(struct fcf_record) +
    sizeof(union lpfc_sli4_cfg_shdr) + 2 * sizeof(uint32_t);


 alloc_len = lpfc_sli4_config(phba, mboxq, LPFC_MBOX_SUBSYSTEM_FCOE,
   LPFC_MBOX_OPCODE_FCOE_READ_FCF_TABLE, req_len,
   LPFC_SLI4_MBX_NEMBED);

 if (alloc_len < req_len) {
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
    "0291 Allocated DMA memory size (x%x) is "
    "less than the requested DMA memory "
    "size (x%x)\n", alloc_len, req_len);
  return -ENOMEM;
 }




 lpfc_sli4_mbx_sge_get(mboxq, 0, &sge);
 virt_addr = mboxq->sge_array->addr[0];
 read_fcf = (struct lpfc_mbx_read_fcf_tbl *)virt_addr;


 bf_set(lpfc_mbx_read_fcf_tbl_indx, &read_fcf->u.request, fcf_index);

 bytep = virt_addr + sizeof(union lpfc_sli4_cfg_shdr);
 lpfc_sli_pcimem_bcopy(bytep, bytep, sizeof(uint32_t));

 return 0;
}
