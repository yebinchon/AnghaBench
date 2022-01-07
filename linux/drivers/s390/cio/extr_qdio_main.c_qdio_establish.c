
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct subchannel_id {int sch_no; } ;
struct TYPE_6__ {int sch_no; } ;
struct TYPE_8__ {scalar_t__ cda; int count; int flags; int cmd_code; } ;
struct TYPE_5__ {int count; int cmd; } ;
struct qdio_irq {scalar_t__ state; int setup_mutex; TYPE_2__ schid; TYPE_4__ ccw; scalar_t__ qdr; TYPE_1__ equeue; } ;
struct qdio_initialize {struct ccw_device* cdev; } ;
struct ccw_device {TYPE_3__* private; } ;
typedef scalar_t__ addr_t ;
struct TYPE_7__ {int wait_q; struct qdio_irq* qdio_data; } ;


 int CCW_FLAG_SLI ;
 int DBF_ERROR (char*,int) ;
 int DBF_EVENT (char*,int ) ;
 int EIO ;
 int ENODEV ;
 int HZ ;
 int QDIO_DOING_ESTABLISH ;
 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 scalar_t__ QDIO_IRQ_STATE_ERR ;
 scalar_t__ QDIO_IRQ_STATE_ESTABLISHED ;
 int ccw_device_get_schid (struct ccw_device*,struct subchannel_id*) ;
 int ccw_device_set_options_mask (struct ccw_device*,int ) ;
 int ccw_device_start (struct ccw_device*,TYPE_4__*,int ,int ,int ) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_detect_hsicq (struct qdio_irq*) ;
 int qdio_establish_thinint (struct qdio_irq*) ;
 int qdio_init_buf_states (struct qdio_irq*) ;
 int qdio_print_subchannel_info (struct qdio_irq*,struct ccw_device*) ;
 int qdio_setup_debug_entries (struct qdio_irq*,struct ccw_device*) ;
 int qdio_setup_irq (struct qdio_initialize*) ;
 int qdio_setup_ssqd_info (struct qdio_irq*) ;
 int qdio_shutdown (struct ccw_device*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int qdio_establish(struct qdio_initialize *init_data)
{
 struct ccw_device *cdev = init_data->cdev;
 struct subchannel_id schid;
 struct qdio_irq *irq_ptr;
 int rc;

 ccw_device_get_schid(cdev, &schid);
 DBF_EVENT("qestablish:%4x", schid.sch_no);

 irq_ptr = cdev->private->qdio_data;
 if (!irq_ptr)
  return -ENODEV;

 mutex_lock(&irq_ptr->setup_mutex);
 qdio_setup_irq(init_data);

 rc = qdio_establish_thinint(irq_ptr);
 if (rc) {
  mutex_unlock(&irq_ptr->setup_mutex);
  qdio_shutdown(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
  return rc;
 }


 irq_ptr->ccw.cmd_code = irq_ptr->equeue.cmd;
 irq_ptr->ccw.flags = CCW_FLAG_SLI;
 irq_ptr->ccw.count = irq_ptr->equeue.count;
 irq_ptr->ccw.cda = (u32)((addr_t)irq_ptr->qdr);

 spin_lock_irq(get_ccwdev_lock(cdev));
 ccw_device_set_options_mask(cdev, 0);

 rc = ccw_device_start(cdev, &irq_ptr->ccw, QDIO_DOING_ESTABLISH, 0, 0);
 spin_unlock_irq(get_ccwdev_lock(cdev));
 if (rc) {
  DBF_ERROR("%4x est IO ERR", irq_ptr->schid.sch_no);
  DBF_ERROR("rc:%4x", rc);
  mutex_unlock(&irq_ptr->setup_mutex);
  qdio_shutdown(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
  return rc;
 }

 wait_event_interruptible_timeout(cdev->private->wait_q,
  irq_ptr->state == QDIO_IRQ_STATE_ESTABLISHED ||
  irq_ptr->state == QDIO_IRQ_STATE_ERR, HZ);

 if (irq_ptr->state != QDIO_IRQ_STATE_ESTABLISHED) {
  mutex_unlock(&irq_ptr->setup_mutex);
  qdio_shutdown(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
  return -EIO;
 }

 qdio_setup_ssqd_info(irq_ptr);

 qdio_detect_hsicq(irq_ptr);


 qdio_init_buf_states(irq_ptr);

 mutex_unlock(&irq_ptr->setup_mutex);
 qdio_print_subchannel_info(irq_ptr, cdev);
 qdio_setup_debug_entries(irq_ptr, cdev);
 return 0;
}
