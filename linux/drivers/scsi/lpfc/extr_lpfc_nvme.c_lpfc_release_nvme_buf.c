
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_sli4_hdw_queue {int abts_io_buf_list_lock; int abts_nvme_io_bufs; int lpfc_abts_io_buf_list; } ;
struct TYPE_4__ {int iotag; int sli4_xritag; } ;
struct lpfc_io_buf {int flags; int list; TYPE_2__ cur_iocbq; struct lpfc_sli4_hdw_queue* hdwq; TYPE_1__* ndlp; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_3__ {int cmd_pending; } ;


 int KERN_INFO ;
 int LOG_NVME_ABTS ;
 int LPFC_SBUF_BUMP_QDEPTH ;
 int LPFC_SBUF_XBUSY ;
 int atomic_dec (int *) ;
 int list_add_tail (int *,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ) ;
 int lpfc_release_io_buf (struct lpfc_hba*,struct lpfc_io_buf*,struct lpfc_sli4_hdw_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_release_nvme_buf(struct lpfc_hba *phba, struct lpfc_io_buf *lpfc_ncmd)
{
 struct lpfc_sli4_hdw_queue *qp;
 unsigned long iflag = 0;

 if ((lpfc_ncmd->flags & LPFC_SBUF_BUMP_QDEPTH) && lpfc_ncmd->ndlp)
  atomic_dec(&lpfc_ncmd->ndlp->cmd_pending);

 lpfc_ncmd->ndlp = ((void*)0);
 lpfc_ncmd->flags &= ~LPFC_SBUF_BUMP_QDEPTH;

 qp = lpfc_ncmd->hdwq;
 if (lpfc_ncmd->flags & LPFC_SBUF_XBUSY) {
  lpfc_printf_log(phba, KERN_INFO, LOG_NVME_ABTS,
    "6310 XB release deferred for "
    "ox_id x%x on reqtag x%x\n",
    lpfc_ncmd->cur_iocbq.sli4_xritag,
    lpfc_ncmd->cur_iocbq.iotag);

  spin_lock_irqsave(&qp->abts_io_buf_list_lock, iflag);
  list_add_tail(&lpfc_ncmd->list,
   &qp->lpfc_abts_io_buf_list);
  qp->abts_nvme_io_bufs++;
  spin_unlock_irqrestore(&qp->abts_io_buf_list_lock, iflag);
 } else
  lpfc_release_io_buf(phba, (struct lpfc_io_buf *)lpfc_ncmd, qp);
}
