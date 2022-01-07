
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
struct TYPE_10__ {int used_cnt; TYPE_3__* msix; scalar_t__ msix_cnt; } ;
struct TYPE_7__ {int num_hwfns; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct qedf_ctx {int cdev; TYPE_4__ int_info; int * fp_array; int dbg_ctx; TYPE_2__ dev_info; } ;
struct TYPE_12__ {TYPE_5__* common; } ;
struct TYPE_11__ {size_t (* get_affin_hwfn_idx ) (int ) ;int (* set_fp_int ) (int ,int ) ;int (* simd_handler_clean ) (int ,int ) ;} ;
struct TYPE_9__ {int vector; } ;


 int QEDF_INFO (int *,int ,char*,int,size_t) ;
 int QEDF_LOG_DISC ;
 int QEDF_SIMD_HANDLER_NUM ;
 int free_irq (int ,int *) ;
 int irq_set_affinity_hint (int ,int *) ;
 int irq_set_affinity_notifier (int ,int *) ;
 TYPE_6__* qed_ops ;
 size_t stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void qedf_sync_free_irqs(struct qedf_ctx *qedf)
{
 int i;
 u16 vector_idx = 0;
 u32 vector;

 if (qedf->int_info.msix_cnt) {
  for (i = 0; i < qedf->int_info.used_cnt; i++) {
   vector_idx = i * qedf->dev_info.common.num_hwfns +
    qed_ops->common->get_affin_hwfn_idx(qedf->cdev);
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
      "Freeing IRQ #%d vector_idx=%d.\n",
      i, vector_idx);
   vector = qedf->int_info.msix[vector_idx].vector;
   synchronize_irq(vector);
   irq_set_affinity_hint(vector, ((void*)0));
   irq_set_affinity_notifier(vector, ((void*)0));
   free_irq(vector, &qedf->fp_array[i]);
  }
 } else
  qed_ops->common->simd_handler_clean(qedf->cdev,
      QEDF_SIMD_HANDLER_NUM);

 qedf->int_info.used_cnt = 0;
 qed_ops->common->set_fp_int(qedf->cdev, 0);
}
