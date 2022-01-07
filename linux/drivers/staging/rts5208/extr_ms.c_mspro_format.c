
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct scsi_cmnd {int dummy; } ;
struct ms_info {int pro_under_formatting; int format_status; scalar_t__ progress; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int FORMAT_IN_PROGRESS ;
 int FORMAT_SUCCESS ;
 int MS_INT_BREQ ;
 int MS_INT_CED ;
 int MS_INT_CMDNK ;
 int MS_INT_ERR ;
 int MS_MAX_RETRY_COUNT ;
 int MS_TRANS_CFG ;
 int NO_WAIT_INT ;
 int PRO_FORMAT ;
 int PRO_WRITE_REG ;
 int Pro_TPCParm ;
 int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_NO_SENSE ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int memset (int*,int ,int) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int,int,int ,int) ;
 int ms_switch_clock (struct rtsx_chip*) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int mspro_set_rw_cmd (struct rtsx_chip*,int ,int,int ) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int set_sense_type (struct rtsx_chip*,int ,int ) ;

int mspro_format(struct scsi_cmnd *srb, struct rtsx_chip *chip,
   int short_data_len, bool quick_format)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval, i;
 u8 buf[8], tmp;
 u16 para;

 retval = ms_switch_clock(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = ms_set_rw_reg_addr(chip, 0x00, 0x00, Pro_TPCParm, 0x01);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 memset(buf, 0, 2);
 switch (short_data_len) {
 case 32:
  buf[0] = 0;
  break;
 case 64:
  buf[0] = 1;
  break;
 case 128:
  buf[0] = 2;
  break;
 case 256:
 default:
  buf[0] = 3;
  break;
 }

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_write_bytes(chip, PRO_WRITE_REG, 1,
     NO_WAIT_INT, buf, 2);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
  return STATUS_FAIL;

 if (quick_format)
  para = 0x0000;
 else
  para = 0x0001;

 retval = mspro_set_rw_cmd(chip, 0, para, PRO_FORMAT);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = rtsx_read_register(chip, MS_TRANS_CFG, &tmp);
 if (retval)
  return retval;

 if (tmp & (MS_INT_CMDNK | MS_INT_ERR))
  return STATUS_FAIL;

 if ((tmp & (MS_INT_BREQ | MS_INT_CED)) == MS_INT_BREQ) {
  ms_card->pro_under_formatting = 1;
  ms_card->progress = 0;
  ms_card->format_status = FORMAT_IN_PROGRESS;
  return STATUS_SUCCESS;
 }

 if (tmp & MS_INT_CED) {
  ms_card->pro_under_formatting = 0;
  ms_card->progress = 0;
  ms_card->format_status = FORMAT_SUCCESS;
  set_sense_type(chip, SCSI_LUN(srb), SENSE_TYPE_NO_SENSE);
  return STATUS_SUCCESS;
 }

 return STATUS_FAIL;
}
