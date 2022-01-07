
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Scsi_Host {int dummy; } ;
typedef enum fc_host_event_code { ____Placeholder_fc_host_event_code } fc_host_event_code ;


 int fc_host_post_fc_event (struct Scsi_Host*,int ,int,int ,char*,int ) ;

void
fc_host_post_event(struct Scsi_Host *shost, u32 event_number,
  enum fc_host_event_code event_code, u32 event_data)
{
 fc_host_post_fc_event(shost, event_number, event_code,
  (u32)sizeof(u32), (char *)&event_data, 0);
}
