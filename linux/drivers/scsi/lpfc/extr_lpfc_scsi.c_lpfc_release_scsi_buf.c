
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_io_buf {int flags; TYPE_1__* ndlp; } ;
struct lpfc_hba {int (* lpfc_release_scsi_buf ) (struct lpfc_hba*,struct lpfc_io_buf*) ;} ;
struct TYPE_2__ {int cmd_pending; } ;


 int LPFC_SBUF_BUMP_QDEPTH ;
 int atomic_dec (int *) ;
 int stub1 (struct lpfc_hba*,struct lpfc_io_buf*) ;

__attribute__((used)) static void
lpfc_release_scsi_buf(struct lpfc_hba *phba, struct lpfc_io_buf *psb)
{
 if ((psb->flags & LPFC_SBUF_BUMP_QDEPTH) && psb->ndlp)
  atomic_dec(&psb->ndlp->cmd_pending);

 psb->flags &= ~LPFC_SBUF_BUMP_QDEPTH;
 phba->lpfc_release_scsi_buf(phba, psb);
}
