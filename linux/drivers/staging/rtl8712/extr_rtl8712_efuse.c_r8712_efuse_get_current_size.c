
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct _adapter {int dummy; } ;


 int calculate_word_cnts (int) ;
 scalar_t__ efuse_available_max_size ;
 scalar_t__ efuse_one_byte_read (struct _adapter*,scalar_t__,int*) ;

u16 r8712_efuse_get_current_size(struct _adapter *adapter)
{
 int bContinual = 1;
 u16 efuse_addr = 0;
 u8 hworden = 0;
 u8 efuse_data, word_cnts = 0;

 while (bContinual && efuse_one_byte_read(adapter, efuse_addr,
        &efuse_data) && (efuse_addr < efuse_available_max_size)) {
  if (efuse_data != 0xFF) {
   hworden = efuse_data & 0x0F;
   word_cnts = calculate_word_cnts(hworden);

   efuse_addr = efuse_addr + (word_cnts * 2) + 1;
  } else {
   bContinual = 0;
  }
 }
 return efuse_addr;
}
