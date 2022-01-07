
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pqi_raid_error_info {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;


 int NO_TIMEOUT ;
 int RAID_CTLR_LUNID ;
 int pqi_send_scsi_raid_request (struct pqi_ctrl_info*,int ,int ,void*,size_t,int ,struct pqi_raid_error_info*,int ) ;

__attribute__((used)) static inline int pqi_send_ctrl_raid_with_error(struct pqi_ctrl_info *ctrl_info,
  u8 cmd, void *buffer, size_t buffer_length,
  struct pqi_raid_error_info *error_info)
{
 return pqi_send_scsi_raid_request(ctrl_info, cmd, RAID_CTLR_LUNID,
   buffer, buffer_length, 0, error_info, NO_TIMEOUT);
}
