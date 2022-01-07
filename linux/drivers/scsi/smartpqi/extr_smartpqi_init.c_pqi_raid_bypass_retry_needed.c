
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; TYPE_1__* device; } ;
struct pqi_scsi_dev {int dummy; } ;
struct pqi_io_request {struct scsi_cmnd* scmd; int raid_bypass; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_2__ {int host; struct pqi_scsi_dev* hostdata; } ;


 scalar_t__ DID_NO_CONNECT ;
 int SAM_STAT_GOOD ;
 scalar_t__ host_byte (int) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_device_offline (struct pqi_scsi_dev*) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;

__attribute__((used)) static bool pqi_raid_bypass_retry_needed(struct pqi_io_request *io_request)
{
 struct scsi_cmnd *scmd;
 struct pqi_scsi_dev *device;
 struct pqi_ctrl_info *ctrl_info;

 if (!io_request->raid_bypass)
  return 0;

 scmd = io_request->scmd;
 if ((scmd->result & 0xff) == SAM_STAT_GOOD)
  return 0;
 if (host_byte(scmd->result) == DID_NO_CONNECT)
  return 0;

 device = scmd->device->hostdata;
 if (pqi_device_offline(device))
  return 0;

 ctrl_info = shost_to_hba(scmd->device->host);
 if (pqi_ctrl_offline(ctrl_info))
  return 0;

 return 1;
}
