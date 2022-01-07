
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sli4_sge {int word2; void* sge_len; void* addr_hi; void* addr_lo; } ;
struct TYPE_9__ {struct sli4_sge wqe_com; } ;
union lpfc_wqe128 {TYPE_4__ generic; int * words; } ;
typedef int uint32_t ;
struct TYPE_7__ {int bdeFlags; int bdeSize; } ;
struct TYPE_8__ {int w; TYPE_2__ f; } ;
struct ulp_bde64 {TYPE_3__ tus; void* addrHigh; void* addrLow; } ;
struct sli4_hybrid_sgl {scalar_t__ dma_sgl; int dma_phys_sgl; } ;
struct scatterlist {int length; int dma_address; } ;
struct nvmefc_fcp_req {int sg_cnt; int payload_length; struct scatterlist* first_sgl; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_6__ {union lpfc_wqe128 wqe; } ;
struct lpfc_io_buf {scalar_t__ seg_cnt; struct sli4_sge* dma_sgl; TYPE_1__ cur_iocbq; struct nvmefc_fcp_req* nvmeCmd; } ;
struct lpfc_hba {int cfg_nvme_seg_cnt; int border_sge_num; int cfg_sg_dma_buf_size; scalar_t__ cfg_enable_pbde; } ;
typedef int dma_addr_t ;
struct TYPE_10__ {scalar_t__ max_sgl_segments; } ;


 int BUFF_TYPE_BDE_64 ;
 int KERN_ERR ;
 int LOG_NVME_IOERR ;
 int LPFC_SGE_TYPE_DATA ;
 int LPFC_SGE_TYPE_LSP ;
 int bf_get (int ,struct sli4_sge*) ;
 int bf_set (int ,struct sli4_sge*,int) ;
 void* cpu_to_le32 (int) ;
 int le32_to_cpu (void*) ;
 struct sli4_hybrid_sgl* lpfc_get_sgl_per_hdwq (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_nvme_adj_fcp_sgls (struct lpfc_vport*,struct lpfc_io_buf*,struct nvmefc_fcp_req*) ;
 TYPE_5__ lpfc_nvme_template ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int) ;
 int lpfc_sli4_sge_last ;
 int lpfc_sli4_sge_offset ;
 int lpfc_sli4_sge_type ;
 int memset (int *,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;
 int wqe_pbde ;

__attribute__((used)) static int
lpfc_nvme_prep_io_dma(struct lpfc_vport *vport,
        struct lpfc_io_buf *lpfc_ncmd)
{
 struct lpfc_hba *phba = vport->phba;
 struct nvmefc_fcp_req *nCmd = lpfc_ncmd->nvmeCmd;
 union lpfc_wqe128 *wqe = &lpfc_ncmd->cur_iocbq.wqe;
 struct sli4_sge *sgl = lpfc_ncmd->dma_sgl;
 struct sli4_hybrid_sgl *sgl_xtra = ((void*)0);
 struct scatterlist *data_sg;
 struct sli4_sge *first_data_sgl;
 struct ulp_bde64 *bde;
 dma_addr_t physaddr = 0;
 uint32_t num_bde = 0;
 uint32_t dma_len = 0;
 uint32_t dma_offset = 0;
 int nseg, i, j;
 bool lsp_just_set = 0;


 lpfc_nvme_adj_fcp_sgls(vport, lpfc_ncmd, nCmd);





 if (nCmd->sg_cnt) {




  sgl += 2;

  first_data_sgl = sgl;
  lpfc_ncmd->seg_cnt = nCmd->sg_cnt;
  if (lpfc_ncmd->seg_cnt > lpfc_nvme_template.max_sgl_segments) {
   lpfc_printf_log(phba, KERN_ERR, LOG_NVME_IOERR,
     "6058 Too many sg segments from "
     "NVME Transport.  Max %d, "
     "nvmeIO sg_cnt %d\n",
     phba->cfg_nvme_seg_cnt + 1,
     lpfc_ncmd->seg_cnt);
   lpfc_ncmd->seg_cnt = 0;
   return 1;
  }







  nseg = nCmd->sg_cnt;
  data_sg = nCmd->first_sgl;


  j = 2;
  for (i = 0; i < nseg; i++) {
   if (data_sg == ((void*)0)) {
    lpfc_printf_log(phba, KERN_ERR, LOG_NVME_IOERR,
      "6059 dptr err %d, nseg %d\n",
      i, nseg);
    lpfc_ncmd->seg_cnt = 0;
    return 1;
   }

   sgl->word2 = 0;
   if ((num_bde + 1) == nseg) {
    bf_set(lpfc_sli4_sge_last, sgl, 1);
    bf_set(lpfc_sli4_sge_type, sgl,
           LPFC_SGE_TYPE_DATA);
   } else {
    bf_set(lpfc_sli4_sge_last, sgl, 0);


    if (!lsp_just_set &&
        !((j + 1) % phba->border_sge_num) &&
        ((nseg - 1) != i)) {

     bf_set(lpfc_sli4_sge_type, sgl,
            LPFC_SGE_TYPE_LSP);

     sgl_xtra = lpfc_get_sgl_per_hdwq(
       phba, lpfc_ncmd);

     if (unlikely(!sgl_xtra)) {
      lpfc_ncmd->seg_cnt = 0;
      return 1;
     }
     sgl->addr_lo = cpu_to_le32(putPaddrLow(
             sgl_xtra->dma_phys_sgl));
     sgl->addr_hi = cpu_to_le32(putPaddrHigh(
             sgl_xtra->dma_phys_sgl));

    } else {
     bf_set(lpfc_sli4_sge_type, sgl,
            LPFC_SGE_TYPE_DATA);
    }
   }

   if (!(bf_get(lpfc_sli4_sge_type, sgl) &
         LPFC_SGE_TYPE_LSP)) {
    if ((nseg - 1) == i)
     bf_set(lpfc_sli4_sge_last, sgl, 1);

    physaddr = data_sg->dma_address;
    dma_len = data_sg->length;
    sgl->addr_lo = cpu_to_le32(
        putPaddrLow(physaddr));
    sgl->addr_hi = cpu_to_le32(
       putPaddrHigh(physaddr));

    bf_set(lpfc_sli4_sge_offset, sgl, dma_offset);
    sgl->word2 = cpu_to_le32(sgl->word2);
    sgl->sge_len = cpu_to_le32(dma_len);

    dma_offset += dma_len;
    data_sg = sg_next(data_sg);

    sgl++;

    lsp_just_set = 0;
   } else {
    sgl->word2 = cpu_to_le32(sgl->word2);

    sgl->sge_len = cpu_to_le32(
           phba->cfg_sg_dma_buf_size);

    sgl = (struct sli4_sge *)sgl_xtra->dma_sgl;
    i = i - 1;

    lsp_just_set = 1;
   }

   j++;
  }
  if (phba->cfg_enable_pbde) {


   bde = (struct ulp_bde64 *)
    &wqe->words[13];
   bde->addrLow = first_data_sgl->addr_lo;
   bde->addrHigh = first_data_sgl->addr_hi;
   bde->tus.f.bdeSize =
    le32_to_cpu(first_data_sgl->sge_len);
   bde->tus.f.bdeFlags = BUFF_TYPE_BDE_64;
   bde->tus.w = cpu_to_le32(bde->tus.w);

  } else {
   memset(&wqe->words[13], 0, (sizeof(uint32_t) * 3));
   bf_set(wqe_pbde, &wqe->generic.wqe_com, 0);
  }

 } else {
  lpfc_ncmd->seg_cnt = 0;




  if (nCmd->payload_length != 0) {
   lpfc_printf_log(phba, KERN_ERR, LOG_NVME_IOERR,
     "6063 NVME DMA Prep Err: sg_cnt %d "
     "payload_length x%x\n",
     nCmd->sg_cnt, nCmd->payload_length);
   return 1;
  }
 }
 return 0;
}
