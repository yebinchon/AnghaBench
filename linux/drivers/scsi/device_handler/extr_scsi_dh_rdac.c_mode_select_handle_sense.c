
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {int asc; int ascq; int sense_key; } ;
struct scsi_device {struct rdac_dh_data* handler_data; } ;
struct rdac_dh_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int index; scalar_t__ array_name; } ;






 int RDAC_LOG (int ,struct scsi_device*,char*,char*,int ,int ,int,int) ;
 int RDAC_LOG_FAILOVER ;
 int SCSI_DH_IMM_RETRY ;
 int SCSI_DH_IO ;
 int SCSI_DH_RETRY ;

 int scsi_sense_valid (struct scsi_sense_hdr*) ;

__attribute__((used)) static int mode_select_handle_sense(struct scsi_device *sdev,
        struct scsi_sense_hdr *sense_hdr)
{
 int err = SCSI_DH_IO;
 struct rdac_dh_data *h = sdev->handler_data;

 if (!scsi_sense_valid(sense_hdr))
  goto done;

 switch (sense_hdr->sense_key) {
 case 129:
 case 132:
 case 128:
  err = SCSI_DH_RETRY;
  break;
 case 130:
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x01)



   err = SCSI_DH_RETRY;
  break;
 case 131:
  if (sense_hdr->asc == 0x91 && sense_hdr->ascq == 0x36)



   err = SCSI_DH_IMM_RETRY;
  break;
 default:
  break;
 }

 RDAC_LOG(RDAC_LOG_FAILOVER, sdev, "array %s, ctlr %d, "
  "MODE_SELECT returned with sense %02x/%02x/%02x",
  (char *) h->ctlr->array_name, h->ctlr->index,
  sense_hdr->sense_key, sense_hdr->asc, sense_hdr->ascq);

done:
 return err;
}
