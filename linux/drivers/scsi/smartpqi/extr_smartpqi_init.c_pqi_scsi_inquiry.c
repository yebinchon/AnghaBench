
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pqi_ctrl_info {int dummy; } ;


 int INQUIRY ;
 int NO_TIMEOUT ;
 int pqi_send_scsi_raid_request (struct pqi_ctrl_info*,int ,int *,void*,size_t,int ,int *,int ) ;

__attribute__((used)) static inline int pqi_scsi_inquiry(struct pqi_ctrl_info *ctrl_info,
 u8 *scsi3addr, u16 vpd_page, void *buffer, size_t buffer_length)
{
 return pqi_send_scsi_raid_request(ctrl_info, INQUIRY, scsi3addr,
  buffer, buffer_length, vpd_page, ((void*)0), NO_TIMEOUT);
}
