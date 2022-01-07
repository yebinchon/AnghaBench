
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


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int bdeSize; scalar_t__ bdeFlags; } ;
struct TYPE_8__ {int w; TYPE_1__ f; } ;
struct ulp_bde64 {TYPE_2__ tus; void* addrLow; void* addrHigh; } ;
struct sli4_sge {int word2; void* sge_len; void* addr_lo; void* addr_hi; } ;
struct lpfc_sglq {int sli4_xritag; scalar_t__ sgl; } ;
struct TYPE_9__ {scalar_t__ bdeFlags; int bdeSize; int addrHigh; int addrLow; } ;
struct TYPE_10__ {TYPE_3__ bdl; } ;
struct TYPE_11__ {TYPE_4__ genreq64; } ;
struct TYPE_12__ {scalar_t__ ulpCommand; TYPE_5__ un; } ;
struct lpfc_iocbq {TYPE_6__ iocb; scalar_t__ context3; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
typedef TYPE_6__ IOCB_t ;


 scalar_t__ BUFF_TYPE_BDE_64 ;
 scalar_t__ BUFF_TYPE_BDE_64I ;
 scalar_t__ BUFF_TYPE_BLP_64 ;
 scalar_t__ CMD_GEN_REQUEST64_CR ;
 scalar_t__ CMD_XMIT_BLS_RSP64_CX ;
 int LPFC_SGE_TYPE_DATA ;
 int NO_XRI ;
 int bf_set (int ,struct sli4_sge*,int) ;
 void* cpu_to_le32 (int) ;
 void* le32_to_cpu (int) ;
 int lpfc_sli4_sge_last ;
 int lpfc_sli4_sge_offset ;
 int lpfc_sli4_sge_type ;

__attribute__((used)) static uint16_t
lpfc_sli4_bpl2sgl(struct lpfc_hba *phba, struct lpfc_iocbq *piocbq,
  struct lpfc_sglq *sglq)
{
 uint16_t xritag = NO_XRI;
 struct ulp_bde64 *bpl = ((void*)0);
 struct ulp_bde64 bde;
 struct sli4_sge *sgl = ((void*)0);
 struct lpfc_dmabuf *dmabuf;
 IOCB_t *icmd;
 int numBdes = 0;
 int i = 0;
 uint32_t offset = 0;
 int inbound = 0;

 if (!piocbq || !sglq)
  return xritag;

 sgl = (struct sli4_sge *)sglq->sgl;
 icmd = &piocbq->iocb;
 if (icmd->ulpCommand == CMD_XMIT_BLS_RSP64_CX)
  return sglq->sli4_xritag;
 if (icmd->un.genreq64.bdl.bdeFlags == BUFF_TYPE_BLP_64) {
  numBdes = icmd->un.genreq64.bdl.bdeSize /
    sizeof(struct ulp_bde64);




  if (piocbq->context3)
   dmabuf = (struct lpfc_dmabuf *)piocbq->context3;
  else
   return xritag;

  bpl = (struct ulp_bde64 *)dmabuf->virt;
  if (!bpl)
   return xritag;

  for (i = 0; i < numBdes; i++) {

   sgl->addr_hi = bpl->addrHigh;
   sgl->addr_lo = bpl->addrLow;

   sgl->word2 = le32_to_cpu(sgl->word2);
   if ((i+1) == numBdes)
    bf_set(lpfc_sli4_sge_last, sgl, 1);
   else
    bf_set(lpfc_sli4_sge_last, sgl, 0);



   bde.tus.w = le32_to_cpu(bpl->tus.w);
   sgl->sge_len = cpu_to_le32(bde.tus.f.bdeSize);




   if (piocbq->iocb.ulpCommand == CMD_GEN_REQUEST64_CR) {

    if (bpl->tus.f.bdeFlags == BUFF_TYPE_BDE_64I)
     inbound++;

    if (inbound == 1)
     offset = 0;
    bf_set(lpfc_sli4_sge_offset, sgl, offset);
    bf_set(lpfc_sli4_sge_type, sgl,
     LPFC_SGE_TYPE_DATA);
    offset += bde.tus.f.bdeSize;
   }
   sgl->word2 = cpu_to_le32(sgl->word2);
   bpl++;
   sgl++;
  }
 } else if (icmd->un.genreq64.bdl.bdeFlags == BUFF_TYPE_BDE_64) {




   sgl->addr_hi =
    cpu_to_le32(icmd->un.genreq64.bdl.addrHigh);
   sgl->addr_lo =
    cpu_to_le32(icmd->un.genreq64.bdl.addrLow);
   sgl->word2 = le32_to_cpu(sgl->word2);
   bf_set(lpfc_sli4_sge_last, sgl, 1);
   sgl->word2 = cpu_to_le32(sgl->word2);
   sgl->sge_len =
    cpu_to_le32(icmd->un.genreq64.bdl.bdeSize);
 }
 return sglq->sli4_xritag;
}
