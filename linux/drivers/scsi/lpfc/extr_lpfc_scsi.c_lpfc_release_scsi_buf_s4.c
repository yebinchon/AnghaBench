
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli4_hdw_queue {int abts_io_buf_list_lock; int abts_scsi_io_bufs; int lpfc_abts_io_buf_list; } ;
struct lpfc_io_buf {int list; int * pCmd; scalar_t__ exch_busy; struct lpfc_sli4_hdw_queue* hdwq; scalar_t__ prot_seg_cnt; scalar_t__ seg_cnt; } ;
struct lpfc_hba {int dummy; } ;


 int list_add_tail (int *,int *) ;
 int lpfc_release_io_buf (struct lpfc_hba*,struct lpfc_io_buf*,struct lpfc_sli4_hdw_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_release_scsi_buf_s4(struct lpfc_hba *phba, struct lpfc_io_buf *psb)
{
 struct lpfc_sli4_hdw_queue *qp;
 unsigned long iflag = 0;

 psb->seg_cnt = 0;
 psb->prot_seg_cnt = 0;

 qp = psb->hdwq;
 if (psb->exch_busy) {
  spin_lock_irqsave(&qp->abts_io_buf_list_lock, iflag);
  psb->pCmd = ((void*)0);
  list_add_tail(&psb->list, &qp->lpfc_abts_io_buf_list);
  qp->abts_scsi_io_bufs++;
  spin_unlock_irqrestore(&qp->abts_io_buf_list_lock, iflag);
 } else {
  lpfc_release_io_buf(phba, (struct lpfc_io_buf *)psb, qp);
 }
}
