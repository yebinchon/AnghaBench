
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_raid_path_request {int request_id; int error_index; } ;
struct pqi_raid_error_info {int dummy; } ;
struct pqi_iu_header {scalar_t__ iu_type; int iu_length; } ;
struct pqi_io_request {struct pqi_iu_header* error_info; int * context; int io_complete_callback; struct pqi_raid_error_info* iu; int index; } ;
struct pqi_ctrl_info {int sync_request_sem; TYPE_1__* pci_dev; int * queue_groups; } ;
struct TYPE_2__ {int dev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ENXIO ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 unsigned long NO_TIMEOUT ;
 size_t PQI_DEFAULT_QUEUE_GROUP ;
 size_t PQI_REQUEST_HEADER_LENGTH ;
 scalar_t__ PQI_REQUEST_IU_RAID_PATH_IO ;
 unsigned int PQI_SYNC_FLAGS_INTERRUPTABLE ;
 int RAID_PATH ;
 int dev_warn (int *,char*) ;
 int down (int *) ;
 scalar_t__ down_interruptible (int *) ;
 scalar_t__ down_timeout (int *,int ) ;
 size_t get_unaligned_le16 (int *) ;
 unsigned long jiffies ;
 unsigned long jiffies_to_msecs (unsigned long) ;
 int memcpy (struct pqi_raid_error_info*,struct pqi_iu_header*,int) ;
 int memset (struct pqi_raid_error_info*,int ,int) ;
 int msecs_to_jiffies (unsigned long) ;
 struct pqi_io_request* pqi_alloc_io_request (struct pqi_ctrl_info*) ;
 int pqi_ctrl_busy (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 int pqi_ctrl_unbusy (struct pqi_ctrl_info*) ;
 int pqi_free_io_request (struct pqi_io_request*) ;
 int pqi_process_raid_io_error_synchronous (struct pqi_iu_header*) ;
 int pqi_raid_synchronous_complete ;
 int pqi_start_io (struct pqi_ctrl_info*,int *,int ,struct pqi_io_request*) ;
 int pqi_wait_for_completion_io (struct pqi_ctrl_info*,int *) ;
 unsigned long pqi_wait_if_ctrl_blocked (struct pqi_ctrl_info*,unsigned long) ;
 int put_unaligned_le16 (int ,int *) ;
 int up (int *) ;
 int wait ;
 int wait_for_completion_io_timeout (int *,int ) ;

__attribute__((used)) static int pqi_submit_raid_request_synchronous(struct pqi_ctrl_info *ctrl_info,
 struct pqi_iu_header *request, unsigned int flags,
 struct pqi_raid_error_info *error_info, unsigned long timeout_msecs)
{
 int rc = 0;
 struct pqi_io_request *io_request;
 unsigned long start_jiffies;
 unsigned long msecs_blocked;
 size_t iu_length;
 DECLARE_COMPLETION_ONSTACK(wait);






 if (flags & PQI_SYNC_FLAGS_INTERRUPTABLE) {
  if (down_interruptible(&ctrl_info->sync_request_sem))
   return -ERESTARTSYS;
 } else {
  if (timeout_msecs == NO_TIMEOUT) {
   down(&ctrl_info->sync_request_sem);
  } else {
   start_jiffies = jiffies;
   if (down_timeout(&ctrl_info->sync_request_sem,
    msecs_to_jiffies(timeout_msecs)))
    return -ETIMEDOUT;
   msecs_blocked =
    jiffies_to_msecs(jiffies - start_jiffies);
   if (msecs_blocked >= timeout_msecs) {
    rc = -ETIMEDOUT;
    goto out;
   }
   timeout_msecs -= msecs_blocked;
  }
 }

 pqi_ctrl_busy(ctrl_info);
 timeout_msecs = pqi_wait_if_ctrl_blocked(ctrl_info, timeout_msecs);
 if (timeout_msecs == 0) {
  pqi_ctrl_unbusy(ctrl_info);
  rc = -ETIMEDOUT;
  goto out;
 }

 if (pqi_ctrl_offline(ctrl_info)) {
  pqi_ctrl_unbusy(ctrl_info);
  rc = -ENXIO;
  goto out;
 }

 io_request = pqi_alloc_io_request(ctrl_info);

 put_unaligned_le16(io_request->index,
  &(((struct pqi_raid_path_request *)request)->request_id));

 if (request->iu_type == PQI_REQUEST_IU_RAID_PATH_IO)
  ((struct pqi_raid_path_request *)request)->error_index =
   ((struct pqi_raid_path_request *)request)->request_id;

 iu_length = get_unaligned_le16(&request->iu_length) +
  PQI_REQUEST_HEADER_LENGTH;
 memcpy(io_request->iu, request, iu_length);

 io_request->io_complete_callback = pqi_raid_synchronous_complete;
 io_request->context = &wait;

 pqi_start_io(ctrl_info,
  &ctrl_info->queue_groups[PQI_DEFAULT_QUEUE_GROUP], RAID_PATH,
  io_request);

 pqi_ctrl_unbusy(ctrl_info);

 if (timeout_msecs == NO_TIMEOUT) {
  pqi_wait_for_completion_io(ctrl_info, &wait);
 } else {
  if (!wait_for_completion_io_timeout(&wait,
   msecs_to_jiffies(timeout_msecs))) {
   dev_warn(&ctrl_info->pci_dev->dev,
    "command timed out\n");
   rc = -ETIMEDOUT;
  }
 }

 if (error_info) {
  if (io_request->error_info)
   memcpy(error_info, io_request->error_info,
    sizeof(*error_info));
  else
   memset(error_info, 0, sizeof(*error_info));
 } else if (rc == 0 && io_request->error_info) {
  rc = pqi_process_raid_io_error_synchronous(
   io_request->error_info);
 }

 pqi_free_io_request(io_request);

out:
 up(&ctrl_info->sync_request_sem);

 return rc;
}
