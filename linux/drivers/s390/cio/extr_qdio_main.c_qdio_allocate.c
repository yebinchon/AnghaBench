
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel_id {int sch_no; } ;
struct qdr {int dummy; } ;
struct qdio_irq {struct qdr* qdr; scalar_t__ chsc_page; int setup_mutex; } ;
struct qdio_initialize {TYPE_2__* cdev; int no_output_qs; int no_input_qs; int output_sbal_addr_array; int input_sbal_addr_array; int output_handler; int input_handler; } ;
struct TYPE_4__ {TYPE_1__* private; } ;
struct TYPE_3__ {struct qdio_irq* qdio_data; } ;


 int DBF_EVENT (char*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int QDIO_IRQ_STATE_INACTIVE ;
 int QDIO_MAX_QUEUES_PER_IRQ ;
 int ccw_device_get_schid (TYPE_2__*,struct subchannel_id*) ;
 scalar_t__ get_zeroed_page (int) ;
 int mutex_init (int *) ;
 scalar_t__ qdio_allocate_dbf (struct qdio_initialize*,struct qdio_irq*) ;
 scalar_t__ qdio_allocate_qs (struct qdio_irq*,int ,int ) ;
 int qdio_release_memory (struct qdio_irq*) ;
 int qdio_set_state (struct qdio_irq*,int ) ;

int qdio_allocate(struct qdio_initialize *init_data)
{
 struct subchannel_id schid;
 struct qdio_irq *irq_ptr;

 ccw_device_get_schid(init_data->cdev, &schid);
 DBF_EVENT("qallocate:%4x", schid.sch_no);

 if ((init_data->no_input_qs && !init_data->input_handler) ||
     (init_data->no_output_qs && !init_data->output_handler))
  return -EINVAL;

 if ((init_data->no_input_qs > QDIO_MAX_QUEUES_PER_IRQ) ||
     (init_data->no_output_qs > QDIO_MAX_QUEUES_PER_IRQ))
  return -EINVAL;

 if ((!init_data->input_sbal_addr_array) ||
     (!init_data->output_sbal_addr_array))
  return -EINVAL;


 irq_ptr = (void *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!irq_ptr)
  goto out_err;

 mutex_init(&irq_ptr->setup_mutex);
 if (qdio_allocate_dbf(init_data, irq_ptr))
  goto out_rel;







 irq_ptr->chsc_page = get_zeroed_page(GFP_KERNEL);
 if (!irq_ptr->chsc_page)
  goto out_rel;


 irq_ptr->qdr = (struct qdr *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!irq_ptr->qdr)
  goto out_rel;

 if (qdio_allocate_qs(irq_ptr, init_data->no_input_qs,
        init_data->no_output_qs))
  goto out_rel;

 init_data->cdev->private->qdio_data = irq_ptr;
 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
 return 0;
out_rel:
 qdio_release_memory(irq_ptr);
out_err:
 return -ENOMEM;
}
