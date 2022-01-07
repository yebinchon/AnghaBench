
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sli4_sge_diseed {int word2; int word3; void* sge_len; void* addr_hi; void* addr_lo; void* ref_tag; void* ref_tag_tran; } ;
struct sli4_sge {int word2; int word3; void* sge_len; void* addr_hi; void* addr_lo; void* ref_tag; void* ref_tag_tran; } ;
struct sli4_hybrid_sgl {scalar_t__ dma_sgl; int dma_phys_sgl; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct scatterlist {int dummy; } ;
struct lpfc_io_buf {scalar_t__ seg_cnt; } ;
struct lpfc_hba {int border_sge_num; int cfg_sg_dma_buf_size; } ;
typedef int dma_addr_t ;


 int BG_ERR_CHECK ;
 int BG_ERR_SWAP ;
 scalar_t__ DMA_FROM_DEVICE ;
 int LPFC_CHECK_PROTECT_GUARD ;
 int LPFC_CHECK_PROTECT_REF ;
 int LPFC_SGE_TYPE_DATA ;
 int LPFC_SGE_TYPE_DISEED ;
 int LPFC_SGE_TYPE_LSP ;
 int bf_get (int ,struct sli4_sge_diseed*) ;
 int bf_set (int ,struct sli4_sge_diseed*,int) ;
 void* cpu_to_le32 (int) ;
 int lpfc_bg_err_inject (struct lpfc_hba*,struct scsi_cmnd*,int*,int *,int) ;
 int lpfc_bg_err_opcodes (struct lpfc_hba*,struct scsi_cmnd*,int*,int*) ;
 scalar_t__ lpfc_cmd_protect (struct scsi_cmnd*,int ) ;
 struct sli4_hybrid_sgl* lpfc_get_sgl_per_hdwq (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_sc_to_bg_opcodes (struct lpfc_hba*,struct scsi_cmnd*,int*,int*) ;
 int lpfc_sli4_sge_dif_ai ;
 int lpfc_sli4_sge_dif_ce ;
 int lpfc_sli4_sge_dif_me ;
 int lpfc_sli4_sge_dif_oprx ;
 int lpfc_sli4_sge_dif_optx ;
 int lpfc_sli4_sge_dif_re ;
 int lpfc_sli4_sge_last ;
 int lpfc_sli4_sge_offset ;
 int lpfc_sli4_sge_type ;
 int memset (struct sli4_sge_diseed*,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;
 scalar_t__ scsi_get_lba (struct scsi_cmnd*) ;
 struct scatterlist* scsi_sglist (struct scsi_cmnd*) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_bg_setup_sgl(struct lpfc_hba *phba, struct scsi_cmnd *sc,
  struct sli4_sge *sgl, int datasegcnt,
  struct lpfc_io_buf *lpfc_cmd)
{
 struct scatterlist *sgde = ((void*)0);
 struct sli4_sge_diseed *diseed = ((void*)0);
 dma_addr_t physaddr;
 int i = 0, num_sge = 0, status;
 uint32_t reftag;
 uint8_t txop, rxop;



 uint32_t checking = 1;
 uint32_t dma_len;
 uint32_t dma_offset = 0;
 struct sli4_hybrid_sgl *sgl_xtra = ((void*)0);
 int j;
 bool lsp_just_set = 0;

 status = lpfc_sc_to_bg_opcodes(phba, sc, &txop, &rxop);
 if (status)
  goto out;


 reftag = (uint32_t)scsi_get_lba(sc);
 diseed = (struct sli4_sge_diseed *) sgl;
 memset(diseed, 0, sizeof(struct sli4_sge_diseed));
 bf_set(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_DISEED);


 diseed->ref_tag = cpu_to_le32(reftag);
 diseed->ref_tag_tran = diseed->ref_tag;





 if (sc->sc_data_direction == DMA_FROM_DEVICE) {
  if (lpfc_cmd_protect(sc, LPFC_CHECK_PROTECT_GUARD))
   bf_set(lpfc_sli4_sge_dif_ce, diseed, checking);
  else
   bf_set(lpfc_sli4_sge_dif_ce, diseed, 0);

  if (lpfc_cmd_protect(sc, LPFC_CHECK_PROTECT_REF))
   bf_set(lpfc_sli4_sge_dif_re, diseed, checking);
  else
   bf_set(lpfc_sli4_sge_dif_re, diseed, 0);
 }


 bf_set(lpfc_sli4_sge_dif_optx, diseed, txop);
 bf_set(lpfc_sli4_sge_dif_oprx, diseed, rxop);

 bf_set(lpfc_sli4_sge_dif_ai, diseed, 1);
 bf_set(lpfc_sli4_sge_dif_me, diseed, 0);


 diseed->word2 = cpu_to_le32(diseed->word2);
 diseed->word3 = cpu_to_le32(diseed->word3);


 num_sge++;
 sgl++;


 sgde = scsi_sglist(sc);
 j = 3;
 for (i = 0; i < datasegcnt; i++) {

  sgl->word2 = 0;


  if (!lsp_just_set && !((j + 1) % phba->border_sge_num) &&
      ((datasegcnt - 1) != i)) {

   bf_set(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_LSP);

   sgl_xtra = lpfc_get_sgl_per_hdwq(phba, lpfc_cmd);

   if (unlikely(!sgl_xtra)) {
    lpfc_cmd->seg_cnt = 0;
    return 0;
   }
   sgl->addr_lo = cpu_to_le32(putPaddrLow(
      sgl_xtra->dma_phys_sgl));
   sgl->addr_hi = cpu_to_le32(putPaddrHigh(
      sgl_xtra->dma_phys_sgl));

  } else {
   bf_set(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_DATA);
  }

  if (!(bf_get(lpfc_sli4_sge_type, sgl) & LPFC_SGE_TYPE_LSP)) {
   if ((datasegcnt - 1) == i)
    bf_set(lpfc_sli4_sge_last, sgl, 1);
   physaddr = sg_dma_address(sgde);
   dma_len = sg_dma_len(sgde);
   sgl->addr_lo = cpu_to_le32(putPaddrLow(physaddr));
   sgl->addr_hi = cpu_to_le32(putPaddrHigh(physaddr));

   bf_set(lpfc_sli4_sge_offset, sgl, dma_offset);
   sgl->word2 = cpu_to_le32(sgl->word2);
   sgl->sge_len = cpu_to_le32(dma_len);

   dma_offset += dma_len;
   sgde = sg_next(sgde);

   sgl++;
   num_sge++;
   lsp_just_set = 0;

  } else {
   sgl->word2 = cpu_to_le32(sgl->word2);
   sgl->sge_len = cpu_to_le32(phba->cfg_sg_dma_buf_size);

   sgl = (struct sli4_sge *)sgl_xtra->dma_sgl;
   i = i - 1;

   lsp_just_set = 1;
  }

  j++;

 }

out:
 return num_sge;
}
