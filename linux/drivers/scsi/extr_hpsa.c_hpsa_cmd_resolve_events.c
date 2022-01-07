
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int commands_outstanding; scalar_t__ in_reset; } ;
struct ctlr_info {int event_sync_wait_queue; } ;
struct CommandList {int scsi_cmd; struct hpsa_scsi_dev_t* device; } ;


 int SCSI_CMD_IDLE ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mb () ;
 int wake_up_all (int *) ;

__attribute__((used)) static void hpsa_cmd_resolve_events(struct ctlr_info *h,
  struct CommandList *c)
{
 struct hpsa_scsi_dev_t *dev = c->device;






 c->scsi_cmd = SCSI_CMD_IDLE;
 mb();
 if (dev) {
  atomic_dec(&dev->commands_outstanding);
  if (dev->in_reset &&
   atomic_read(&dev->commands_outstanding) <= 0)
   wake_up_all(&h->event_sync_wait_queue);
 }
}
