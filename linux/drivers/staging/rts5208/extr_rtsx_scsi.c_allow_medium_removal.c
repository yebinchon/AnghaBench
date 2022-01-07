
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;


 int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int set_sense_type (struct rtsx_chip*,int ,int ) ;

__attribute__((used)) static int allow_medium_removal(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int prevent;

 prevent = srb->cmnd[4] & 0x1;

 scsi_set_resid(srb, 0);

 if (prevent) {
  set_sense_type(chip, SCSI_LUN(srb),
          SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 return TRANSPORT_GOOD;
}
