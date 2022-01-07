
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct Scsi_Host {int dummy; } ;


 int FCH_EVT_VENDOR_UNIQUE ;
 int fc_host_post_fc_event (struct Scsi_Host*,int ,int ,int ,char*,int ) ;

void
fc_host_post_vendor_event(struct Scsi_Host *shost, u32 event_number,
  u32 data_len, char * data_buf, u64 vendor_id)
{
 fc_host_post_fc_event(shost, event_number, FCH_EVT_VENDOR_UNIQUE,
  data_len, data_buf, vendor_id);
}
