
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pqi_ctrl_info {int dummy; } ;


 int pqi_send_ctrl_raid_request (struct pqi_ctrl_info*,int ,void*,size_t) ;

__attribute__((used)) static inline int pqi_report_luns(struct pqi_ctrl_info *ctrl_info, u8 cmd,
 void *buffer, size_t buffer_length)
{
 return pqi_send_ctrl_raid_request(ctrl_info, cmd, buffer,
     buffer_length);
}
