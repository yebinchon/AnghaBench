
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct scsi_cmnd {int request; } ;
struct pqi_ctrl_info {scalar_t__ max_hw_queue_index; } ;


 int blk_mq_unique_tag (int ) ;
 scalar_t__ blk_mq_unique_tag_to_hwq (int ) ;

__attribute__((used)) static inline u16 pqi_get_hw_queue(struct pqi_ctrl_info *ctrl_info,
 struct scsi_cmnd *scmd)
{
 u16 hw_queue;

 hw_queue = blk_mq_unique_tag_to_hwq(blk_mq_unique_tag(scmd->request));
 if (hw_queue > ctrl_info->max_hw_queue_index)
  hw_queue = 0;

 return hw_queue;
}
