
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct _adapter {int dummy; } ;


 int EFUSE_CLK_CTRL ;
 int MAKE_EFUSE_HEADER (int const,int const) ;
 int _REPEAT_THRESHOLD_ ;
 int calculate_word_cnts (int const) ;
 scalar_t__ efuse_available_max_size ;
 int efuse_one_byte_read (struct _adapter*,scalar_t__,int*) ;
 int efuse_one_byte_write (struct _adapter*,scalar_t__,int const) ;
 int fix_header (struct _adapter*,int,scalar_t__) ;
 scalar_t__ r8712_efuse_get_current_size (struct _adapter*) ;
 int r8712_read8 (struct _adapter*,int ) ;

u8 r8712_efuse_pg_packet_write(struct _adapter *adapter, const u8 offset,
          const u8 word_en, const u8 *data)
{
 u8 pg_header = 0;
 u16 efuse_addr = 0, curr_size = 0;
 u8 efuse_data, target_word_cnts = 0;
 int repeat_times;
 int sub_repeat;
 u8 bResult = 1;


 efuse_data = r8712_read8(adapter, EFUSE_CLK_CTRL);
 if (efuse_data != 0x03)
  return 0;
 pg_header = MAKE_EFUSE_HEADER(offset, word_en);
 target_word_cnts = calculate_word_cnts(word_en);
 repeat_times = 0;
 efuse_addr = 0;
 while (efuse_addr < efuse_available_max_size) {
  curr_size = r8712_efuse_get_current_size(adapter);
  if ((curr_size + 1 + target_word_cnts * 2) >
       efuse_available_max_size)
   return 0;
  efuse_addr = curr_size;
  efuse_one_byte_write(adapter, efuse_addr, pg_header);
  sub_repeat = 0;

  while (!efuse_one_byte_read(adapter, efuse_addr,
         &efuse_data)) {
   if (++sub_repeat > _REPEAT_THRESHOLD_) {
    bResult = 0;
    break;
   }
  }
  if ((sub_repeat > _REPEAT_THRESHOLD_) ||
      (pg_header == efuse_data)) {

   u8 i;


   efuse_addr++;
   for (i = 0; i < target_word_cnts * 2; i++) {
    efuse_one_byte_write(adapter,
           efuse_addr + i,
           *(data + i));
    if (!efuse_one_byte_read(adapter,
        efuse_addr + i,
        &efuse_data))
     bResult = 0;
    else if (*(data + i) != efuse_data)
     bResult = 0;
   }
   break;
  }

  bResult = 0;
  if (efuse_data == 0xFF)
   return bResult;

  if (!fix_header(adapter, efuse_data, efuse_addr))
   return 0;

  if (++repeat_times > _REPEAT_THRESHOLD_)
   break;

 }
 return bResult;
}
