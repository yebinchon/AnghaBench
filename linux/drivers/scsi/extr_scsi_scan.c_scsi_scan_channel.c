
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint ;
typedef int u64 ;
struct Scsi_Host {unsigned int max_id; int shost_gendev; scalar_t__ reverse_ordering; } ;
typedef enum scsi_scan_mode { ____Placeholder_scsi_scan_mode } scsi_scan_mode ;


 unsigned int SCAN_WILD_CARD ;
 int __scsi_scan_target (int *,unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static void scsi_scan_channel(struct Scsi_Host *shost, unsigned int channel,
         unsigned int id, u64 lun,
         enum scsi_scan_mode rescan)
{
 uint order_id;

 if (id == SCAN_WILD_CARD)
  for (id = 0; id < shost->max_id; ++id) {
   if (shost->reverse_ordering)



    order_id = shost->max_id - id - 1;
   else
    order_id = id;
   __scsi_scan_target(&shost->shost_gendev, channel,
     order_id, lun, rescan);
  }
 else
  __scsi_scan_target(&shost->shost_gendev, channel,
    id, lun, rescan);
}
