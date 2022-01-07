
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct qla_hw_data {int * wq; TYPE_2__* isp_ops; scalar_t__ interrupts_on; } ;
struct TYPE_11__ {scalar_t__ init_done; scalar_t__ online; } ;
struct TYPE_13__ {TYPE_1__ flags; scalar_t__ timer_active; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_12__ {int (* disable_intrs ) (struct qla_hw_data*) ;} ;


 int DID_NO_CONNECT ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int qla25xx_delete_queues (TYPE_3__*) ;
 int qla2x00_abort_all_cmds (TYPE_3__*,int) ;
 int qla2x00_free_fcports (TYPE_3__*) ;
 int qla2x00_free_irqs (TYPE_3__*) ;
 int qla2x00_free_queues (struct qla_hw_data*) ;
 int qla2x00_mem_free (struct qla_hw_data*) ;
 int qla2x00_stop_timer (TYPE_3__*) ;
 int qla82xx_md_free (TYPE_3__*) ;
 int stub1 (struct qla_hw_data*) ;

__attribute__((used)) static void
qla2x00_free_device(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 qla2x00_abort_all_cmds(vha, DID_NO_CONNECT << 16);


 if (vha->timer_active)
  qla2x00_stop_timer(vha);

 qla25xx_delete_queues(vha);
 vha->flags.online = 0;


 if (ha->interrupts_on) {
  vha->flags.init_done = 0;
  ha->isp_ops->disable_intrs(ha);
 }

 qla2x00_free_fcports(vha);

 qla2x00_free_irqs(vha);


 if (ha->wq) {
  flush_workqueue(ha->wq);
  destroy_workqueue(ha->wq);
  ha->wq = ((void*)0);
 }


 qla2x00_mem_free(ha);

 qla82xx_md_free(vha);

 qla2x00_free_queues(ha);
}
