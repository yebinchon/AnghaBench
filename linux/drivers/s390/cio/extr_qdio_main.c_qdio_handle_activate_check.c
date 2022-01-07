
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qdio_q {int first_to_kick; int nr; TYPE_3__* irq_ptr; int (* handler ) (int ,int ,int ,int ,int,int ) ;int first_to_check; } ;
struct TYPE_5__ {int sch_no; } ;
struct qdio_irq {int int_parm; struct qdio_q** output_qs; scalar_t__ nr_output_qs; struct qdio_q** input_qs; scalar_t__ nr_input_qs; TYPE_2__ schid; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_6__ {int cdev; } ;
struct TYPE_4__ {struct qdio_irq* qdio_data; } ;


 int DBF_ERROR (char*,int,...) ;
 int QDIO_ERROR_ACTIVATE ;
 int QDIO_IRQ_STATE_STOPPED ;
 int dump_stack () ;
 int lgr_info_log () ;
 int qdio_set_state (struct qdio_irq*,int ) ;
 int stub1 (int ,int ,int ,int ,int,int ) ;
 int sub_buf (int ,int ) ;

__attribute__((used)) static void qdio_handle_activate_check(struct ccw_device *cdev,
    unsigned long intparm, int cstat, int dstat)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;
 struct qdio_q *q;
 int count;

 DBF_ERROR("%4x ACT CHECK", irq_ptr->schid.sch_no);
 DBF_ERROR("intp :%lx", intparm);
 DBF_ERROR("ds: %2x cs:%2x", dstat, cstat);

 if (irq_ptr->nr_input_qs) {
  q = irq_ptr->input_qs[0];
 } else if (irq_ptr->nr_output_qs) {
  q = irq_ptr->output_qs[0];
 } else {
  dump_stack();
  goto no_handler;
 }

 count = sub_buf(q->first_to_check, q->first_to_kick);
 q->handler(q->irq_ptr->cdev, QDIO_ERROR_ACTIVATE,
     q->nr, q->first_to_kick, count, irq_ptr->int_parm);
no_handler:
 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_STOPPED);




 lgr_info_log();
}
