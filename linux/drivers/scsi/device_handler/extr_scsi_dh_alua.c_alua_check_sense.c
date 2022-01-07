
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;


 int ADD_TO_MLQUEUE ;
 int NEEDS_RETRY ;

 int SCSI_RETURN_NOT_HANDLED ;

 int alua_check (struct scsi_device*,int) ;

__attribute__((used)) static int alua_check_sense(struct scsi_device *sdev,
       struct scsi_sense_hdr *sense_hdr)
{
 switch (sense_hdr->sense_key) {
 case 129:
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x0a) {



   alua_check(sdev, 0);
   return NEEDS_RETRY;
  }
  break;
 case 128:
  if (sense_hdr->asc == 0x29 && sense_hdr->ascq == 0x00) {





   alua_check(sdev, 1);
   return ADD_TO_MLQUEUE;
  }
  if (sense_hdr->asc == 0x29 && sense_hdr->ascq == 0x04)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x2a && sense_hdr->ascq == 0x01)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x2a && sense_hdr->ascq == 0x06) {



   alua_check(sdev, 1);
   return ADD_TO_MLQUEUE;
  }
  if (sense_hdr->asc == 0x2a && sense_hdr->ascq == 0x07) {



   alua_check(sdev, 1);
   return ADD_TO_MLQUEUE;
  }
  if (sense_hdr->asc == 0x3f && sense_hdr->ascq == 0x03)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x3f && sense_hdr->ascq == 0x0e)





   return ADD_TO_MLQUEUE;
  break;
 }

 return SCSI_RETURN_NOT_HANDLED;
}
