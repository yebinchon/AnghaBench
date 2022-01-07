
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int block_requests; int scsi_host; int block_requests_wait; } ;


 int pqi_retry_raid_bypass_requests (struct pqi_ctrl_info*) ;
 int scsi_unblock_requests (int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static inline void pqi_ctrl_unblock_requests(struct pqi_ctrl_info *ctrl_info)
{
 ctrl_info->block_requests = 0;
 wake_up_all(&ctrl_info->block_requests_wait);
 pqi_retry_raid_bypass_requests(ctrl_info);
 scsi_unblock_requests(ctrl_info->scsi_host);
}
