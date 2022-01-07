
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {int dummy; } ;
struct scsi_disk {TYPE_1__* disk; int device; } ;
struct TYPE_2__ {int * disk_name; } ;


 int scsi_print_sense_hdr (int ,int *,struct scsi_sense_hdr*) ;

__attribute__((used)) static void sd_print_sense_hdr(struct scsi_disk *sdkp,
          struct scsi_sense_hdr *sshdr)
{
 scsi_print_sense_hdr(sdkp->device,
        sdkp->disk ? sdkp->disk->disk_name : ((void*)0), sshdr);
}
