
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int MS_CARD ;
 int MS_EXTRA_SIZE ;
 int MS_NO_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int memset (scalar_t__*,int,int) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_write_extra_data (struct rtsx_chip*,int,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static int ms_init_page(struct rtsx_chip *chip, u16 phy_blk, u16 log_blk,
   u8 start_page, u8 end_page)
{
 int retval;
 u8 extra[MS_EXTRA_SIZE], i;

 memset(extra, 0xff, MS_EXTRA_SIZE);

 extra[0] = 0xf8;
 extra[1] = 0xff;
 extra[2] = (u8)(log_blk >> 8);
 extra[3] = (u8)log_blk;

 for (i = start_page; i < end_page; i++) {
  if (detect_card_cd(chip, MS_CARD) != STATUS_SUCCESS) {
   ms_set_err_code(chip, MS_NO_CARD);
   return STATUS_FAIL;
  }

  retval = ms_write_extra_data(chip, phy_blk, i,
          extra, MS_EXTRA_SIZE);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
