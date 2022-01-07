
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sense_data_t {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct ms_info {scalar_t__ format_status; scalar_t__ progress; scalar_t__ pro_under_formatting; } ;
struct rtsx_chip {struct sense_data_t* sense_buffer; struct ms_info ms_card; } ;


 int CUR_ERR ;
 scalar_t__ FORMAT_IN_PROGRESS ;
 scalar_t__ FORMAT_SUCCESS ;
 scalar_t__ MS_CARD ;
 int RTSX_STAT_RUN ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_FORMAT_CMD_FAILED ;
 int SENSE_TYPE_NO_SENSE ;
 int TRANSPORT_ERROR ;
 int TRANSPORT_GOOD ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int rtsx_stor_set_xfer_buf (unsigned char*,int ,struct scsi_cmnd*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int set_sense_data (struct rtsx_chip*,unsigned int,int ,int,int ,int,int,int ,int ) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int vfree (unsigned char*) ;
 unsigned char* vmalloc (int ) ;

__attribute__((used)) static int request_sense(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 struct sense_data_t *sense;
 unsigned int lun = SCSI_LUN(srb);
 struct ms_info *ms_card = &chip->ms_card;
 unsigned char *tmp, *buf;

 sense = &chip->sense_buffer[lun];

 if ((get_lun_card(chip, lun) == MS_CARD) &&
     ms_card->pro_under_formatting) {
  if (ms_card->format_status == FORMAT_SUCCESS) {
   set_sense_type(chip, lun, SENSE_TYPE_NO_SENSE);
   ms_card->pro_under_formatting = 0;
   ms_card->progress = 0;
  } else if (ms_card->format_status == FORMAT_IN_PROGRESS) {

   set_sense_data(chip, lun, CUR_ERR, 0x02, 0, 0x04, 0x04,
           0, (u16)(ms_card->progress));
  } else {

   set_sense_type(chip, lun, SENSE_TYPE_FORMAT_CMD_FAILED);
   ms_card->pro_under_formatting = 0;
   ms_card->progress = 0;
  }

  rtsx_set_stat(chip, RTSX_STAT_RUN);
 }

 buf = vmalloc(scsi_bufflen(srb));
 if (!buf)
  return TRANSPORT_ERROR;

 tmp = (unsigned char *)sense;
 memcpy(buf, tmp, scsi_bufflen(srb));

 rtsx_stor_set_xfer_buf(buf, scsi_bufflen(srb), srb);
 vfree(buf);

 scsi_set_resid(srb, 0);

 set_sense_type(chip, lun, SENSE_TYPE_NO_SENSE);
 return TRANSPORT_GOOD;
}
