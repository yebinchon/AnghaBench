
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sli4_sge {int word2; } ;
struct lpfc_io_buf {scalar_t__ dma_sgl; } ;
struct lpfc_hba {int dummy; } ;


 int bf_set (int ,struct sli4_sge*,int) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int lpfc_sli4_sge_last ;

__attribute__((used)) static void
lpfc_sli4_set_rsp_sgl_last(struct lpfc_hba *phba,
    struct lpfc_io_buf *lpfc_cmd)
{
 struct sli4_sge *sgl = (struct sli4_sge *)lpfc_cmd->dma_sgl;
 if (sgl) {
  sgl += 1;
  sgl->word2 = le32_to_cpu(sgl->word2);
  bf_set(lpfc_sli4_sge_last, sgl, 1);
  sgl->word2 = cpu_to_le32(sgl->word2);
 }
}
