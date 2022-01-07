
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int cmd_len; int cmnd; } ;
struct pqi_scsi_dev {int aio_handle; } ;
struct pqi_queue_group {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;


 int pqi_aio_submit_io (struct pqi_ctrl_info*,struct scsi_cmnd*,int ,int ,int ,struct pqi_queue_group*,int *,int) ;

__attribute__((used)) static inline int pqi_aio_submit_scsi_cmd(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device, struct scsi_cmnd *scmd,
 struct pqi_queue_group *queue_group)
{
 return pqi_aio_submit_io(ctrl_info, scmd, device->aio_handle,
  scmd->cmnd, scmd->cmd_len, queue_group, ((void*)0), 0);
}
