
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ms_info {int ms_type; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int GET_INT ;
 int MS_8BIT ;
 int MS_BUS_WIDTH_8 ;
 int MS_CFG ;
 int MS_MAX_RETRY_COUNT ;
 int MS_TM_READ_BYTES ;
 int NO_WAIT_INT ;
 scalar_t__ PARALLEL_8BIT_IF ;
 int SAMPLE_TIME_FALLING ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG ;
 int ms_set_init_para (struct rtsx_chip*) ;
 int ms_transfer_tpc (struct rtsx_chip*,int ,int ,int,int ) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,scalar_t__*,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static int ms_switch_8bit_bus(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval, i;
 u8 data[2];

 data[0] = PARALLEL_8BIT_IF;
 data[1] = 0;
 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_write_bytes(chip, WRITE_REG, 1,
     NO_WAIT_INT, data, 2);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = rtsx_write_register(chip, MS_CFG, 0x98,
         MS_BUS_WIDTH_8 | SAMPLE_TIME_FALLING);
 if (retval)
  return retval;

 ms_card->ms_type |= MS_8BIT;
 retval = ms_set_init_para(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_transfer_tpc(chip, MS_TM_READ_BYTES, GET_INT,
      1, NO_WAIT_INT);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
