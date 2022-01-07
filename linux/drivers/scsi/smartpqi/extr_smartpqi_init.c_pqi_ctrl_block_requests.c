
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int block_requests; int scsi_host; } ;


 int scsi_block_requests (int ) ;

__attribute__((used)) static inline void pqi_ctrl_block_requests(struct pqi_ctrl_info *ctrl_info)
{
 ctrl_info->block_requests = 1;
 scsi_block_requests(ctrl_info->scsi_host);
}
