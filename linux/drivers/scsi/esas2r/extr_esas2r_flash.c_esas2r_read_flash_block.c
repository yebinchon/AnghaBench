
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct esas2r_adapter {int flags2; } ;


 int AF2_SERIAL_FLASH ;
 int DRBL_FLASH_DONE ;
 int DRBL_FLASH_REQ ;
 int MW_DATA_ADDR_PAR_FLASH ;
 int MW_DATA_ADDR_SER_FLASH ;
 int WINDOW_SIZE ;
 int esas2r_flash_access (struct esas2r_adapter*,int ) ;
 int esas2r_map_data_window (struct esas2r_adapter*,int) ;
 int esas2r_read_data_byte (struct esas2r_adapter*,int) ;
 scalar_t__ test_bit (int ,int *) ;

bool esas2r_read_flash_block(struct esas2r_adapter *a,
        void *to,
        u32 from,
        u32 size)
{
 u8 *end = (u8 *)to;


 if (!esas2r_flash_access(a, DRBL_FLASH_REQ))
  return 0;

 while (size) {
  u32 len;
  u32 offset;
  u32 iatvr;

  if (test_bit(AF2_SERIAL_FLASH, &a->flags2))
   iatvr = MW_DATA_ADDR_SER_FLASH + (from & -WINDOW_SIZE);
  else
   iatvr = MW_DATA_ADDR_PAR_FLASH + (from & -WINDOW_SIZE);

  esas2r_map_data_window(a, iatvr);
  offset = from & (WINDOW_SIZE - 1);
  len = size;

  if (len > WINDOW_SIZE - offset)
   len = WINDOW_SIZE - offset;

  from += len;
  size -= len;

  while (len--) {
   *end++ = esas2r_read_data_byte(a, offset);
   offset++;
  }
 }


 esas2r_flash_access(a, DRBL_FLASH_DONE);
 return 1;
}
