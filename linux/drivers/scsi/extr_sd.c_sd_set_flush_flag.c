
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {TYPE_1__* disk; scalar_t__ DPOFUA; scalar_t__ WCE; } ;
struct TYPE_2__ {int queue; } ;


 int blk_queue_write_cache (int ,int,int) ;

__attribute__((used)) static void sd_set_flush_flag(struct scsi_disk *sdkp)
{
 bool wc = 0, fua = 0;

 if (sdkp->WCE) {
  wc = 1;
  if (sdkp->DPOFUA)
   fua = 1;
 }

 blk_queue_write_cache(sdkp->disk->queue, wc, fua);
}
