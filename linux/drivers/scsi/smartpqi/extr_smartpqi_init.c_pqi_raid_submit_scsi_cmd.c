
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct pqi_scsi_dev {int dummy; } ;
struct pqi_queue_group {int dummy; } ;
struct pqi_io_request {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;


 struct pqi_io_request* pqi_alloc_io_request (struct pqi_ctrl_info*) ;
 int pqi_raid_submit_scsi_cmd_with_io_request (struct pqi_ctrl_info*,struct pqi_io_request*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ;

__attribute__((used)) static inline int pqi_raid_submit_scsi_cmd(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device, struct scsi_cmnd *scmd,
 struct pqi_queue_group *queue_group)
{
 struct pqi_io_request *io_request;

 io_request = pqi_alloc_io_request(ctrl_info);

 return pqi_raid_submit_scsi_cmd_with_io_request(ctrl_info, io_request,
  device, scmd, queue_group);
}
