
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsp_que {struct qla_hw_data* hw; } ;
struct TYPE_2__ {int atio_lock; } ;
struct qla_hw_data {TYPE_1__ tgt; int pdev; } ;
typedef int scsi_qla_host_t ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int * pci_get_drvdata (int ) ;
 int qlt_24xx_process_atio_queue (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

irqreturn_t
qla83xx_msix_atio_q(int irq, void *dev_id)
{
 struct rsp_que *rsp;
 scsi_qla_host_t *vha;
 struct qla_hw_data *ha;
 unsigned long flags;

 rsp = (struct rsp_que *) dev_id;
 ha = rsp->hw;
 vha = pci_get_drvdata(ha->pdev);

 spin_lock_irqsave(&ha->tgt.atio_lock, flags);

 qlt_24xx_process_atio_queue(vha, 0);

 spin_unlock_irqrestore(&ha->tgt.atio_lock, flags);

 return IRQ_HANDLED;
}
