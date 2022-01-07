
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hpsa_scsi_dev_t {int scsi3addr; int commands_outstanding; } ;
struct ctlr_info {int reset_mutex; TYPE_1__* pdev; int event_sync_wait_queue; } ;
struct TYPE_2__ {int dev; } ;


 int EINTR ;
 int ENODEV ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_warn (int *,char*) ;
 int hpsa_send_reset (struct ctlr_info*,struct hpsa_scsi_dev_t*,int ,int) ;
 scalar_t__ lockup_detected (struct ctlr_info*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (scalar_t__) ;
 int wait_event (int ,int) ;
 int wait_for_device_to_become_ready (struct ctlr_info*,int ,int ) ;

__attribute__((used)) static int hpsa_do_reset(struct ctlr_info *h, struct hpsa_scsi_dev_t *dev,
 u8 reset_type, int reply_queue)
{
 int rc = 0;


 if (mutex_lock_interruptible(&h->reset_mutex) == -EINTR) {
  dev_warn(&h->pdev->dev, "concurrent reset wait interrupted.\n");
  return -EINTR;
 }

 rc = hpsa_send_reset(h, dev, reset_type, reply_queue);
 if (!rc) {

  atomic_dec(&dev->commands_outstanding);
  wait_event(h->event_sync_wait_queue,
   atomic_read(&dev->commands_outstanding) <= 0 ||
   lockup_detected(h));
 }

 if (unlikely(lockup_detected(h))) {
  dev_warn(&h->pdev->dev,
    "Controller lockup detected during reset wait\n");
  rc = -ENODEV;
 }

 if (!rc)
  rc = wait_for_device_to_become_ready(h, dev->scsi3addr, 0);

 mutex_unlock(&h->reset_mutex);
 return rc;
}
