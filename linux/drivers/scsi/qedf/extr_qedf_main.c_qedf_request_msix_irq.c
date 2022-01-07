
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


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_11__ {int used_cnt; TYPE_4__* msix; } ;
struct TYPE_7__ {int num_hwfns; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct qedf_ctx {int num_queues; TYPE_5__ int_info; int dbg_ctx; int * fp_array; int cdev; TYPE_2__ dev_info; } ;
struct TYPE_12__ {TYPE_3__* common; } ;
struct TYPE_10__ {int vector; } ;
struct TYPE_9__ {size_t (* get_affin_hwfn_idx ) (int ) ;} ;


 int QEDF_INFO (int *,int ,char*,int,size_t) ;
 int QEDF_LOG_DISC ;
 int QEDF_WARN (int *,char*) ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_next (int,int ) ;
 int get_cpu_mask (int) ;
 int irq_set_affinity_hint (int ,int ) ;
 TYPE_6__* qed_ops ;
 int qedf_msix_handler ;
 int qedf_sync_free_irqs (struct qedf_ctx*) ;
 int request_irq (int ,int ,int ,char*,int *) ;
 size_t stub1 (int ) ;

__attribute__((used)) static int qedf_request_msix_irq(struct qedf_ctx *qedf)
{
 int i, rc, cpu;
 u16 vector_idx = 0;
 u32 vector;

 cpu = cpumask_first(cpu_online_mask);
 for (i = 0; i < qedf->num_queues; i++) {
  vector_idx = i * qedf->dev_info.common.num_hwfns +
   qed_ops->common->get_affin_hwfn_idx(qedf->cdev);
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
     "Requesting IRQ #%d vector_idx=%d.\n",
     i, vector_idx);
  vector = qedf->int_info.msix[vector_idx].vector;
  rc = request_irq(vector, qedf_msix_handler, 0, "qedf",
     &qedf->fp_array[i]);

  if (rc) {
   QEDF_WARN(&(qedf->dbg_ctx), "request_irq failed.\n");
   qedf_sync_free_irqs(qedf);
   return rc;
  }

  qedf->int_info.used_cnt++;
  rc = irq_set_affinity_hint(vector, get_cpu_mask(cpu));
  cpu = cpumask_next(cpu, cpu_online_mask);
 }

 return 0;
}
