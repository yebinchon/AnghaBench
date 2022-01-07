
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


typedef size_t u16 ;
struct TYPE_10__ {int used_cnt; TYPE_3__* msix; scalar_t__ msix_cnt; } ;
struct TYPE_7__ {int num_hwfns; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct qedi_ctx {int cdev; TYPE_4__ int_info; int * fp_array; int dbg_ctx; TYPE_2__ dev_info; } ;
struct TYPE_12__ {TYPE_5__* common; } ;
struct TYPE_11__ {size_t (* get_affin_hwfn_idx ) (int ) ;int (* set_fp_int ) (int ,int ) ;int (* simd_handler_clean ) (int ,int ) ;} ;
struct TYPE_9__ {int vector; } ;


 int QEDI_INFO (int *,int ,char*,int,size_t) ;
 int QEDI_LOG_INFO ;
 int QEDI_SIMD_HANDLER_NUM ;
 int free_irq (int ,int *) ;
 int irq_set_affinity_hint (int ,int *) ;
 TYPE_6__* qedi_ops ;
 size_t stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void qedi_sync_free_irqs(struct qedi_ctx *qedi)
{
 int i;
 u16 idx;

 if (qedi->int_info.msix_cnt) {
  for (i = 0; i < qedi->int_info.used_cnt; i++) {
   idx = i * qedi->dev_info.common.num_hwfns +
   qedi_ops->common->get_affin_hwfn_idx(qedi->cdev);

   QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
      "Freeing IRQ #%d vector_idx=%d.\n", i, idx);

   synchronize_irq(qedi->int_info.msix[idx].vector);
   irq_set_affinity_hint(qedi->int_info.msix[idx].vector,
           ((void*)0));
   free_irq(qedi->int_info.msix[idx].vector,
     &qedi->fp_array[i]);
  }
 } else {
  qedi_ops->common->simd_handler_clean(qedi->cdev,
           QEDI_SIMD_HANDLER_NUM);
 }

 qedi->int_info.used_cnt = 0;
 qedi_ops->common->set_fp_int(qedi->cdev, 0);
}
