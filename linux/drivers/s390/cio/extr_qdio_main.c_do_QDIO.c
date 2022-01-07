
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_irq {scalar_t__ state; int * output_qs; int * input_qs; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct qdio_irq* qdio_data; } ;


 int DBF_DEV_EVENT (int ,struct qdio_irq*,char*,unsigned int,unsigned int,unsigned int) ;
 int DBF_INFO ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 unsigned int QDIO_FLAG_SYNC_INPUT ;
 unsigned int QDIO_FLAG_SYNC_OUTPUT ;
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ;
 unsigned int QDIO_MAX_BUFFERS_PER_Q ;
 int handle_inbound (int ,unsigned int,unsigned int,unsigned int) ;
 int handle_outbound (int ,unsigned int,unsigned int,unsigned int) ;

int do_QDIO(struct ccw_device *cdev, unsigned int callflags,
     int q_nr, unsigned int bufnr, unsigned int count)
{
 struct qdio_irq *irq_ptr;

 if (bufnr >= QDIO_MAX_BUFFERS_PER_Q || count > QDIO_MAX_BUFFERS_PER_Q)
  return -EINVAL;

 irq_ptr = cdev->private->qdio_data;
 if (!irq_ptr)
  return -ENODEV;

 DBF_DEV_EVENT(DBF_INFO, irq_ptr,
        "do%02x b:%02x c:%02x", callflags, bufnr, count);

 if (irq_ptr->state != QDIO_IRQ_STATE_ACTIVE)
  return -EIO;
 if (!count)
  return 0;
 if (callflags & QDIO_FLAG_SYNC_INPUT)
  return handle_inbound(irq_ptr->input_qs[q_nr],
          callflags, bufnr, count);
 else if (callflags & QDIO_FLAG_SYNC_OUTPUT)
  return handle_outbound(irq_ptr->output_qs[q_nr],
           callflags, bufnr, count);
 return -EINVAL;
}
