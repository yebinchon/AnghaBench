
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms_info {int check_ms_flow; int ms_type; } ;
struct rtsx_chip {int card_wp; struct ms_info ms_card; } ;


 int MS_CARD ;
 int MS_HG ;
 int MS_MAX_RETRY_COUNT ;
 int MS_TM_READ_BYTES ;
 int NO_WAIT_INT ;
 scalar_t__ PPBUF_BASE2 ;
 int Pro_StatusReg ;
 int READ_REG ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int SystemParm ;
 int TYPE_MSPRO ;
 int WRT_PRTCT ;
 int dev_dbg (int ,char*,int) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int,int ,int) ;
 int ms_transfer_tpc (struct rtsx_chip*,int ,int ,int,int ) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,scalar_t__,int*) ;

__attribute__((used)) static int ms_identify_media_type(struct rtsx_chip *chip, int switch_8bit_bus)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval, i;
 u8 val;

 retval = ms_set_rw_reg_addr(chip, Pro_StatusReg, 6, SystemParm, 1);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_transfer_tpc(chip, MS_TM_READ_BYTES, READ_REG,
      6, NO_WAIT_INT);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
  return STATUS_FAIL;

 retval = rtsx_read_register(chip, PPBUF_BASE2 + 2, &val);
 if (retval)
  return retval;

 dev_dbg(rtsx_dev(chip), "Type register: 0x%x\n", val);
 if (val != 0x01) {
  if (val != 0x02)
   ms_card->check_ms_flow = 1;

  return STATUS_FAIL;
 }

 retval = rtsx_read_register(chip, PPBUF_BASE2 + 4, &val);
 if (retval)
  return retval;

 dev_dbg(rtsx_dev(chip), "Category register: 0x%x\n", val);
 if (val != 0) {
  ms_card->check_ms_flow = 1;
  return STATUS_FAIL;
 }

 retval = rtsx_read_register(chip, PPBUF_BASE2 + 5, &val);
 if (retval)
  return retval;

 dev_dbg(rtsx_dev(chip), "Class register: 0x%x\n", val);
 if (val == 0) {
  retval = rtsx_read_register(chip, PPBUF_BASE2, &val);
  if (retval)
   return retval;

  if (val & WRT_PRTCT)
   chip->card_wp |= MS_CARD;
  else
   chip->card_wp &= ~MS_CARD;

 } else if ((val == 0x01) || (val == 0x02) || (val == 0x03)) {
  chip->card_wp |= MS_CARD;
 } else {
  ms_card->check_ms_flow = 1;
  return STATUS_FAIL;
 }

 ms_card->ms_type |= TYPE_MSPRO;

 retval = rtsx_read_register(chip, PPBUF_BASE2 + 3, &val);
 if (retval)
  return retval;

 dev_dbg(rtsx_dev(chip), "IF Mode register: 0x%x\n", val);
 if (val == 0) {
  ms_card->ms_type &= 0x0F;
 } else if (val == 7) {
  if (switch_8bit_bus)
   ms_card->ms_type |= MS_HG;
  else
   ms_card->ms_type &= 0x0F;

 } else {
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
