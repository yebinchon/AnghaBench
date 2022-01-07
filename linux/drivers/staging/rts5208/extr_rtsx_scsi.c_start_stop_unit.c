
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;




 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;

 int TRANSPORT_ERROR ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;

 int check_card_ready (struct rtsx_chip*,unsigned int) ;
 int eject_card (struct rtsx_chip*,unsigned int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;

__attribute__((used)) static int start_stop_unit(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 unsigned int lun = SCSI_LUN(srb);

 scsi_set_resid(srb, scsi_bufflen(srb));

 if (srb->cmnd[1] == 1)
  return TRANSPORT_GOOD;

 switch (srb->cmnd[0x4]) {
 case 129:

  return TRANSPORT_GOOD;

 case 128:

  if (check_card_ready(chip, lun))
   eject_card(chip, lun);
  return TRANSPORT_GOOD;

 case 130:
 case 131:
  if (check_card_ready(chip, lun))
   return TRANSPORT_GOOD;
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
  return TRANSPORT_FAILED;

  break;
 }

 return TRANSPORT_ERROR;
}
