
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int ms_copy_page (struct rtsx_chip*,int ,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static int ms_prepare_write(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
       u16 log_blk, u8 start_page)
{
 int retval;

 if (start_page) {
  retval = ms_copy_page(chip, old_blk, new_blk, log_blk,
          0, start_page);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
