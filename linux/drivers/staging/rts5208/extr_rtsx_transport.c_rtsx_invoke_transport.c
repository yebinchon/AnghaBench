
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sense_data_t {int dummy; } ;
struct scsi_cmnd {int result; int sense_buffer; } ;
struct rtsx_chip {int * sense_buffer; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int RTSX_STAT_ABORT ;
 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 size_t SCSI_LUN (struct scsi_cmnd*) ;
 int TRANSPORT_ERROR ;
 int TRANSPORT_FAILED ;
 int dev_dbg (int ,char*) ;
 int memcpy (int ,unsigned char*,int) ;
 scalar_t__ rtsx_chk_stat (struct rtsx_chip*,int ) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_scsi_handler (struct scsi_cmnd*,struct rtsx_chip*) ;

void rtsx_invoke_transport(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int result;

 result = rtsx_scsi_handler(srb, chip);





 if (rtsx_chk_stat(chip, RTSX_STAT_ABORT)) {
  dev_dbg(rtsx_dev(chip), "-- command was aborted\n");
  srb->result = DID_ABORT << 16;
  goto handle_errors;
 }


 if (result == TRANSPORT_ERROR) {
  dev_dbg(rtsx_dev(chip), "-- transport indicates error, resetting\n");
  srb->result = DID_ERROR << 16;
  goto handle_errors;
 }

 srb->result = SAM_STAT_GOOD;






 if (result == TRANSPORT_FAILED) {

  srb->result = SAM_STAT_CHECK_CONDITION;
  memcpy(srb->sense_buffer,
         (unsigned char *)&chip->sense_buffer[SCSI_LUN(srb)],
         sizeof(struct sense_data_t));
 }

 return;

handle_errors:
 return;
}
