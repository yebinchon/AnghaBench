
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; scalar_t__ result; } ;
struct pqi_io_request {struct scsi_cmnd* scmd; int io_complete_callback; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int pqi_add_to_raid_bypass_retry_list (struct pqi_ctrl_info*,struct pqi_io_request*,int) ;
 int pqi_queued_raid_bypass_complete ;
 int pqi_schedule_bypass_retry (struct pqi_ctrl_info*) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;

__attribute__((used)) static void pqi_queue_raid_bypass_retry(struct pqi_io_request *io_request)
{
 struct scsi_cmnd *scmd;
 struct pqi_ctrl_info *ctrl_info;

 io_request->io_complete_callback = pqi_queued_raid_bypass_complete;
 scmd = io_request->scmd;
 scmd->result = 0;
 ctrl_info = shost_to_hba(scmd->device->host);

 pqi_add_to_raid_bypass_retry_list(ctrl_info, io_request, 0);
 pqi_schedule_bypass_retry(ctrl_info);
}
