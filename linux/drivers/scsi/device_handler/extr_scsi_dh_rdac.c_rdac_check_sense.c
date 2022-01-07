
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {int asc; int ascq; int sense_key; } ;
struct scsi_device {struct rdac_dh_data* handler_data; } ;
struct rdac_dh_data {int state; TYPE_1__* ctlr; } ;
struct TYPE_2__ {int index; scalar_t__ array_name; } ;


 int ADD_TO_MLQUEUE ;


 int RDAC_LOG (int ,struct scsi_device*,char*,char*,int ,int ,int,int) ;
 int RDAC_LOG_SENSE ;
 int RDAC_STATE_PASSIVE ;
 int SCSI_RETURN_NOT_HANDLED ;
 int SUCCESS ;


__attribute__((used)) static int rdac_check_sense(struct scsi_device *sdev,
    struct scsi_sense_hdr *sense_hdr)
{
 struct rdac_dh_data *h = sdev->handler_data;

 RDAC_LOG(RDAC_LOG_SENSE, sdev, "array %s, ctlr %d, "
   "I/O returned with sense %02x/%02x/%02x",
   (char *) h->ctlr->array_name, h->ctlr->index,
   sense_hdr->sense_key, sense_hdr->asc, sense_hdr->ascq);

 switch (sense_hdr->sense_key) {
 case 129:
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x01)




   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x81)





   return SUCCESS;
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0xA1)




   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0xA1 && sense_hdr->ascq == 0x02)




   return ADD_TO_MLQUEUE;
  break;
 case 130:
  if (sense_hdr->asc == 0x94 && sense_hdr->ascq == 0x01) {




   h->state = RDAC_STATE_PASSIVE;
   return SUCCESS;
  }
  break;
 case 128:
  if (sense_hdr->asc == 0x29 && sense_hdr->ascq == 0x00)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x8b && sense_hdr->ascq == 0x02)



   return ADD_TO_MLQUEUE;
  break;
 }

 return SCSI_RETURN_NOT_HANDLED;
}
