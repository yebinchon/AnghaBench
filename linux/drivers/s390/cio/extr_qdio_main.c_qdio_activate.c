
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct subchannel_id {int sch_no; } ;
struct TYPE_7__ {int sch_no; } ;
struct TYPE_8__ {scalar_t__ cda; int count; int flags; int cmd_code; } ;
struct TYPE_6__ {int count; int cmd; } ;
struct qdio_irq {int state; int setup_mutex; TYPE_3__ schid; TYPE_4__ ccw; TYPE_2__ aqueue; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_5__ {struct qdio_irq* qdio_data; } ;


 int CCWDEV_REPORT_ALL ;
 int CCW_FLAG_SLI ;
 int DBF_ERROR (char*,int) ;
 int DBF_EVENT (char*,int ) ;
 int DOIO_DENY_PREFETCH ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int QDIO_DOING_ACTIVATE ;
 int QDIO_IRQ_STATE_ACTIVE ;

 int QDIO_IRQ_STATE_INACTIVE ;

 int ccw_device_get_schid (struct ccw_device*,struct subchannel_id*) ;
 int ccw_device_set_options (struct ccw_device*,int ) ;
 int ccw_device_start (struct ccw_device*,TYPE_4__*,int ,int ,int ) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 scalar_t__ is_thinint_irq (struct qdio_irq*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_set_state (struct qdio_irq*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int tiqdio_add_input_queues (struct qdio_irq*) ;

int qdio_activate(struct ccw_device *cdev)
{
 struct subchannel_id schid;
 struct qdio_irq *irq_ptr;
 int rc;

 ccw_device_get_schid(cdev, &schid);
 DBF_EVENT("qactivate:%4x", schid.sch_no);

 irq_ptr = cdev->private->qdio_data;
 if (!irq_ptr)
  return -ENODEV;

 mutex_lock(&irq_ptr->setup_mutex);
 if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
  rc = -EBUSY;
  goto out;
 }

 irq_ptr->ccw.cmd_code = irq_ptr->aqueue.cmd;
 irq_ptr->ccw.flags = CCW_FLAG_SLI;
 irq_ptr->ccw.count = irq_ptr->aqueue.count;
 irq_ptr->ccw.cda = 0;

 spin_lock_irq(get_ccwdev_lock(cdev));
 ccw_device_set_options(cdev, CCWDEV_REPORT_ALL);

 rc = ccw_device_start(cdev, &irq_ptr->ccw, QDIO_DOING_ACTIVATE,
         0, DOIO_DENY_PREFETCH);
 spin_unlock_irq(get_ccwdev_lock(cdev));
 if (rc) {
  DBF_ERROR("%4x act IO ERR", irq_ptr->schid.sch_no);
  DBF_ERROR("rc:%4x", rc);
  goto out;
 }

 if (is_thinint_irq(irq_ptr))
  tiqdio_add_input_queues(irq_ptr);


 msleep(5);

 switch (irq_ptr->state) {
 case 128:
 case 129:
  rc = -EIO;
  break;
 default:
  qdio_set_state(irq_ptr, QDIO_IRQ_STATE_ACTIVE);
  rc = 0;
 }
out:
 mutex_unlock(&irq_ptr->setup_mutex);
 return rc;
}
