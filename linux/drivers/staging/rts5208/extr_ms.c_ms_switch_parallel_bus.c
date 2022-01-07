
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_chip {int dummy; } ;


 int MS_MAX_RETRY_COUNT ;
 int NO_WAIT_INT ;
 scalar_t__ PARALLEL_4BIT_IF ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,scalar_t__*,int) ;

__attribute__((used)) static int ms_switch_parallel_bus(struct rtsx_chip *chip)
{
 int retval, i;
 u8 data[2];

 data[0] = PARALLEL_4BIT_IF;
 data[1] = 0;
 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_write_bytes(chip, WRITE_REG, 1, NO_WAIT_INT,
     data, 2);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
