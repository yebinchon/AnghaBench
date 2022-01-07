
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iu_length; int iu_type; } ;
struct pqi_task_management_request {int task_management_function; int lun_number; int request_id; TYPE_1__ header; } ;
struct pqi_scsi_dev {int scsi3addr; } ;
struct pqi_io_request {int status; scalar_t__ index; struct pqi_task_management_request* iu; int * context; int io_complete_callback; } ;
struct pqi_ctrl_info {int * queue_groups; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 size_t PQI_DEFAULT_QUEUE_GROUP ;
 scalar_t__ PQI_REQUEST_HEADER_LENGTH ;
 int PQI_REQUEST_IU_TASK_MANAGEMENT ;
 int RAID_PATH ;
 int SOP_TASK_MANAGEMENT_LUN_RESET ;
 int memcpy (int ,int ,int) ;
 int memset (struct pqi_task_management_request*,int ,int) ;
 struct pqi_io_request* pqi_alloc_io_request (struct pqi_ctrl_info*) ;
 int pqi_free_io_request (struct pqi_io_request*) ;
 int pqi_lun_reset_complete ;
 int pqi_start_io (struct pqi_ctrl_info*,int *,int ,struct pqi_io_request*) ;
 int pqi_wait_for_lun_reset_completion (struct pqi_ctrl_info*,struct pqi_scsi_dev*,int *) ;
 int put_unaligned_le16 (scalar_t__,int *) ;
 int wait ;

__attribute__((used)) static int pqi_lun_reset(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 int rc;
 struct pqi_io_request *io_request;
 DECLARE_COMPLETION_ONSTACK(wait);
 struct pqi_task_management_request *request;

 io_request = pqi_alloc_io_request(ctrl_info);
 io_request->io_complete_callback = pqi_lun_reset_complete;
 io_request->context = &wait;

 request = io_request->iu;
 memset(request, 0, sizeof(*request));

 request->header.iu_type = PQI_REQUEST_IU_TASK_MANAGEMENT;
 put_unaligned_le16(sizeof(*request) - PQI_REQUEST_HEADER_LENGTH,
  &request->header.iu_length);
 put_unaligned_le16(io_request->index, &request->request_id);
 memcpy(request->lun_number, device->scsi3addr,
  sizeof(request->lun_number));
 request->task_management_function = SOP_TASK_MANAGEMENT_LUN_RESET;

 pqi_start_io(ctrl_info,
  &ctrl_info->queue_groups[PQI_DEFAULT_QUEUE_GROUP], RAID_PATH,
  io_request);

 rc = pqi_wait_for_lun_reset_completion(ctrl_info, device, &wait);
 if (rc == 0)
  rc = io_request->status;

 pqi_free_io_request(io_request);

 return rc;
}
