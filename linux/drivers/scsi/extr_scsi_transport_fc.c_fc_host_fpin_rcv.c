
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Scsi_Host {int dummy; } ;


 int FCH_EVT_LINK_FPIN ;
 int fc_get_event_number () ;
 int fc_host_post_fc_event (struct Scsi_Host*,int ,int ,int ,char*,int ) ;

void
fc_host_fpin_rcv(struct Scsi_Host *shost, u32 fpin_len, char *fpin_buf)
{
 fc_host_post_fc_event(shost, fc_get_event_number(),
    FCH_EVT_LINK_FPIN, fpin_len, fpin_buf, 0);
}
