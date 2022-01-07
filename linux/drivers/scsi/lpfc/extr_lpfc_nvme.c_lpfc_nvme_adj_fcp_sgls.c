
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sli4_sge {int addr_lo; int word2; void* sge_len; void* addr_hi; } ;
struct TYPE_7__ {int bdeSize; int bdeFlags; } ;
struct TYPE_8__ {TYPE_2__ f; } ;
struct TYPE_9__ {int addrLow; void* addrHigh; TYPE_3__ tus; } ;
struct TYPE_10__ {struct sli4_sge wqe_com; TYPE_4__ bde; } ;
union lpfc_wqe128 {TYPE_5__ generic; int * words; } ;
typedef int uint32_t ;
struct nvmefc_fcp_req {int cmdlen; int rsplen; scalar_t__ sg_cnt; int rspdma; int cmddma; scalar_t__ cmdaddr; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_6__ {union lpfc_wqe128 wqe; } ;
struct lpfc_io_buf {struct sli4_sge* dma_sgl; TYPE_1__ cur_iocbq; } ;
struct lpfc_hba {scalar_t__ cfg_nvme_embed_cmd; } ;


 int BUFF_TYPE_BDE_64 ;
 int BUFF_TYPE_BDE_IMMED ;
 int bf_set (int ,struct sli4_sge*,int) ;
 void* cpu_to_le32 (int) ;
 int le32_to_cpu (int) ;
 int lpfc_sli4_sge_last ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;
 int wqe_dbde ;
 int wqe_wqes ;

__attribute__((used)) static inline void
lpfc_nvme_adj_fcp_sgls(struct lpfc_vport *vport,
         struct lpfc_io_buf *lpfc_ncmd,
         struct nvmefc_fcp_req *nCmd)
{
 struct lpfc_hba *phba = vport->phba;
 struct sli4_sge *sgl;
 union lpfc_wqe128 *wqe;
 uint32_t *wptr, *dptr;







 wqe = &lpfc_ncmd->cur_iocbq.wqe;
 sgl = lpfc_ncmd->dma_sgl;
 sgl->sge_len = cpu_to_le32(nCmd->cmdlen);
 if (phba->cfg_nvme_embed_cmd) {
  sgl->addr_hi = 0;
  sgl->addr_lo = 0;


  wqe->generic.bde.tus.f.bdeFlags = BUFF_TYPE_BDE_IMMED;
  wqe->generic.bde.tus.f.bdeSize = 56;
  wqe->generic.bde.addrHigh = 0;
  wqe->generic.bde.addrLow = 64;
  wptr = &wqe->words[16];
  dptr = (uint32_t *)nCmd->cmdaddr;
  dptr++;

  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  dptr += 8;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr++ = *dptr++;
  *wptr = *dptr;
 } else {
  sgl->addr_hi = cpu_to_le32(putPaddrHigh(nCmd->cmddma));
  sgl->addr_lo = cpu_to_le32(putPaddrLow(nCmd->cmddma));


  wqe->generic.bde.tus.f.bdeFlags = BUFF_TYPE_BDE_64;
  wqe->generic.bde.tus.f.bdeSize = nCmd->cmdlen;
  wqe->generic.bde.addrHigh = sgl->addr_hi;
  wqe->generic.bde.addrLow = sgl->addr_lo;


  bf_set(wqe_dbde, &wqe->generic.wqe_com, 1);
  bf_set(wqe_wqes, &wqe->generic.wqe_com, 0);
 }

 sgl++;


 sgl->addr_hi = cpu_to_le32(putPaddrHigh(nCmd->rspdma));
 sgl->addr_lo = cpu_to_le32(putPaddrLow(nCmd->rspdma));
 sgl->word2 = le32_to_cpu(sgl->word2);
 if (nCmd->sg_cnt)
  bf_set(lpfc_sli4_sge_last, sgl, 0);
 else
  bf_set(lpfc_sli4_sge_last, sgl, 1);
 sgl->word2 = cpu_to_le32(sgl->word2);
 sgl->sge_len = cpu_to_le32(nCmd->rsplen);
}
