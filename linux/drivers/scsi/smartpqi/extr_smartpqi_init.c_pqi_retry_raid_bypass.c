
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct pqi_scsi_dev {int dummy; } ;
struct pqi_queue_group {int dummy; } ;
struct pqi_io_request {struct pqi_queue_group* queue_group; struct scsi_cmnd* scmd; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_2__ {int host; struct pqi_scsi_dev* hostdata; } ;


 int DID_RESET ;
 scalar_t__ pqi_device_in_reset (struct pqi_scsi_dev*) ;
 int pqi_free_io_request (struct pqi_io_request*) ;
 int pqi_raid_submit_scsi_cmd_with_io_request (struct pqi_ctrl_info*,struct pqi_io_request*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ;
 int pqi_reinit_io_request (struct pqi_io_request*) ;
 int pqi_scsi_done (struct scsi_cmnd*) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;

__attribute__((used)) static int pqi_retry_raid_bypass(struct pqi_io_request *io_request)
{
 struct scsi_cmnd *scmd;
 struct pqi_scsi_dev *device;
 struct pqi_ctrl_info *ctrl_info;
 struct pqi_queue_group *queue_group;

 scmd = io_request->scmd;
 device = scmd->device->hostdata;
 if (pqi_device_in_reset(device)) {
  pqi_free_io_request(io_request);
  set_host_byte(scmd, DID_RESET);
  pqi_scsi_done(scmd);
  return 0;
 }

 ctrl_info = shost_to_hba(scmd->device->host);
 queue_group = io_request->queue_group;

 pqi_reinit_io_request(io_request);

 return pqi_raid_submit_scsi_cmd_with_io_request(ctrl_info, io_request,
  device, scmd, queue_group);
}
