
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; } ;
struct scsi_disk {int dummy; } ;




 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 int set_media_not_present (struct scsi_disk*) ;

__attribute__((used)) static int media_not_present(struct scsi_disk *sdkp,
        struct scsi_sense_hdr *sshdr)
{
 if (!scsi_sense_valid(sshdr))
  return 0;


 switch (sshdr->sense_key) {
 case 128:
 case 129:

  if (sshdr->asc == 0x3A) {
   set_media_not_present(sdkp);
   return 1;
  }
 }
 return 0;
}
