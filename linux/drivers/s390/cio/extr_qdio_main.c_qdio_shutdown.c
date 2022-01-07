
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel_id {int sch_no; } ;
struct TYPE_3__ {int sch_no; } ;
struct qdio_irq {scalar_t__ state; int setup_mutex; scalar_t__ orig_handler; TYPE_1__ schid; } ;
struct ccw_device {TYPE_2__* private; scalar_t__ handler; } ;
struct TYPE_4__ {scalar_t__ intparm; int wait_q; struct qdio_irq* qdio_data; } ;


 int DBF_ERROR (char*,int) ;
 int DBF_EVENT (char*,int ) ;
 int ENODEV ;
 int HZ ;
 int QDIO_DOING_CLEANUP ;
 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 scalar_t__ QDIO_IRQ_STATE_CLEANUP ;
 scalar_t__ QDIO_IRQ_STATE_ERR ;
 scalar_t__ QDIO_IRQ_STATE_INACTIVE ;
 scalar_t__ QDIO_IRQ_STATE_STOPPED ;
 int WARN_ON_ONCE (int ) ;
 int ccw_device_clear (struct ccw_device*,int ) ;
 int ccw_device_get_schid (struct ccw_device*,struct subchannel_id*) ;
 int ccw_device_halt (struct ccw_device*,int ) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int irqs_disabled () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ qdio_int_handler ;
 int qdio_set_state (struct qdio_irq*,scalar_t__) ;
 int qdio_shutdown_debug_entries (struct qdio_irq*) ;
 int qdio_shutdown_queues (struct ccw_device*) ;
 int qdio_shutdown_thinint (struct qdio_irq*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int tiqdio_remove_input_queues (struct qdio_irq*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

int qdio_shutdown(struct ccw_device *cdev, int how)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;
 struct subchannel_id schid;
 int rc;

 if (!irq_ptr)
  return -ENODEV;

 WARN_ON_ONCE(irqs_disabled());
 ccw_device_get_schid(cdev, &schid);
 DBF_EVENT("qshutdown:%4x", schid.sch_no);

 mutex_lock(&irq_ptr->setup_mutex);




 if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
  mutex_unlock(&irq_ptr->setup_mutex);
  return 0;
 }





 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_STOPPED);

 tiqdio_remove_input_queues(irq_ptr);
 qdio_shutdown_queues(cdev);
 qdio_shutdown_debug_entries(irq_ptr);


 spin_lock_irq(get_ccwdev_lock(cdev));

 if (how & QDIO_FLAG_CLEANUP_USING_CLEAR)
  rc = ccw_device_clear(cdev, QDIO_DOING_CLEANUP);
 else

  rc = ccw_device_halt(cdev, QDIO_DOING_CLEANUP);
 if (rc) {
  DBF_ERROR("%4x SHUTD ERR", irq_ptr->schid.sch_no);
  DBF_ERROR("rc:%4d", rc);
  goto no_cleanup;
 }

 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_CLEANUP);
 spin_unlock_irq(get_ccwdev_lock(cdev));
 wait_event_interruptible_timeout(cdev->private->wait_q,
  irq_ptr->state == QDIO_IRQ_STATE_INACTIVE ||
  irq_ptr->state == QDIO_IRQ_STATE_ERR,
  10 * HZ);
 spin_lock_irq(get_ccwdev_lock(cdev));

no_cleanup:
 qdio_shutdown_thinint(irq_ptr);


 if ((void *)cdev->handler == (void *)qdio_int_handler) {
  cdev->handler = irq_ptr->orig_handler;
  cdev->private->intparm = 0;
 }
 spin_unlock_irq(get_ccwdev_lock(cdev));

 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
 mutex_unlock(&irq_ptr->setup_mutex);
 if (rc)
  return rc;
 return 0;
}
