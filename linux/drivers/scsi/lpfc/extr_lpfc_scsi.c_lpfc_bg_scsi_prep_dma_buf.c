
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_io_buf {int dummy; } ;
struct lpfc_hba {int (* lpfc_bg_scsi_prep_dma_buf ) (struct lpfc_hba*,struct lpfc_io_buf*) ;} ;


 int stub1 (struct lpfc_hba*,struct lpfc_io_buf*) ;

__attribute__((used)) static inline int
lpfc_bg_scsi_prep_dma_buf(struct lpfc_hba *phba, struct lpfc_io_buf *lpfc_cmd)
{
 return phba->lpfc_bg_scsi_prep_dma_buf(phba, lpfc_cmd);
}
