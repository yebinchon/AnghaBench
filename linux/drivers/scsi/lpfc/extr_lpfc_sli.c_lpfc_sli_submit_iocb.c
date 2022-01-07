
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int cmdidx; int next_cmdidx; } ;
struct TYPE_8__ {TYPE_2__ sli3; } ;
struct TYPE_6__ {int iocb_cmd; } ;
struct lpfc_sli_ring {size_t ringno; TYPE_3__ sli; TYPE_1__ stats; } ;
struct TYPE_10__ {int ulpIoTag; } ;
struct lpfc_iocbq {scalar_t__ iocb_cmpl; TYPE_5__ iocb; int iotag; } ;
struct lpfc_hba {TYPE_4__* host_gp; int iocb_cmd_size; int hbalock; } ;
struct TYPE_9__ {int cmdPutInx; } ;
typedef int IOCB_t ;


 size_t LPFC_ELS_RING ;
 int __lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lockdep_assert_held (int *) ;
 int lpfc_debugfs_slow_ring_trc (struct lpfc_hba*,char*,int ,int ,int ) ;
 int lpfc_sli_pcimem_bcopy (TYPE_5__*,int *,int ) ;
 int lpfc_sli_ringtxcmpl_put (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ;
 int wmb () ;
 int writel (int ,int *) ;

__attribute__((used)) static void
lpfc_sli_submit_iocb(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
  IOCB_t *iocb, struct lpfc_iocbq *nextiocb)
{
 lockdep_assert_held(&phba->hbalock);



 nextiocb->iocb.ulpIoTag = (nextiocb->iocb_cmpl) ? nextiocb->iotag : 0;


 if (pring->ringno == LPFC_ELS_RING) {
  lpfc_debugfs_slow_ring_trc(phba,
   "IOCB cmd ring:   wd4:x%08x wd6:x%08x wd7:x%08x",
   *(((uint32_t *) &nextiocb->iocb) + 4),
   *(((uint32_t *) &nextiocb->iocb) + 6),
   *(((uint32_t *) &nextiocb->iocb) + 7));
 }




 lpfc_sli_pcimem_bcopy(&nextiocb->iocb, iocb, phba->iocb_cmd_size);
 wmb();
 pring->stats.iocb_cmd++;






 if (nextiocb->iocb_cmpl)
  lpfc_sli_ringtxcmpl_put(phba, pring, nextiocb);
 else
  __lpfc_sli_release_iocbq(phba, nextiocb);





 pring->sli.sli3.cmdidx = pring->sli.sli3.next_cmdidx;
 writel(pring->sli.sli3.cmdidx, &phba->host_gp[pring->ringno].cmdPutInx);
}
