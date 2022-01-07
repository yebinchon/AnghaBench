
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int queue_irq_state; } ;
struct TYPE_6__ {TYPE_2__ in; } ;
struct qdio_q {TYPE_3__ u; int first_to_check; } ;
struct qdio_irq {struct qdio_q** input_qs; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_4__ {struct qdio_irq* qdio_data; } ;


 int ENODEV ;
 int QDIO_QUEUE_IRQS_DISABLED ;
 int clear_bit (int ,int *) ;
 int clear_nonshared_ind (struct qdio_irq*) ;
 int qdio_inbound_q_done (struct qdio_q*,int ) ;
 int qdio_stop_polling (struct qdio_q*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_nonshared_ind (struct qdio_irq*) ;

int qdio_start_irq(struct ccw_device *cdev, int nr)
{
 struct qdio_q *q;
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;

 if (!irq_ptr)
  return -ENODEV;
 q = irq_ptr->input_qs[nr];

 clear_nonshared_ind(irq_ptr);
 qdio_stop_polling(q);
 clear_bit(QDIO_QUEUE_IRQS_DISABLED, &q->u.in.queue_irq_state);





 if (test_nonshared_ind(irq_ptr))
  goto rescan;
 if (!qdio_inbound_q_done(q, q->first_to_check))
  goto rescan;
 return 0;

rescan:
 if (test_and_set_bit(QDIO_QUEUE_IRQS_DISABLED,
        &q->u.in.queue_irq_state))
  return 0;
 else
  return 1;

}
