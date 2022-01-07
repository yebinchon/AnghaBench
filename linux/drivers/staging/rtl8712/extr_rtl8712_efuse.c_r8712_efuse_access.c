
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct _adapter {int dummy; } ;


 scalar_t__ EFUSE_MAX_SIZE ;
 scalar_t__ efuse_available_max_size ;
 int efuse_one_byte_rw (struct _adapter*,int,scalar_t__,int*) ;
 int r8712_efuse_reg_init (struct _adapter*) ;
 int r8712_efuse_reg_uninit (struct _adapter*) ;

u8 r8712_efuse_access(struct _adapter *adapter, u8 bRead, u16 start_addr,
        u16 cnts, u8 *data)
{
 int i;
 u8 res = 1;

 if (start_addr > EFUSE_MAX_SIZE)
  return 0;
 if (!bRead && ((start_addr + cnts) >
    efuse_available_max_size))
  return 0;
 if (!bRead && !r8712_efuse_reg_init(adapter))
  return 0;

 for (i = 0; i < cnts; i++) {
  if ((start_addr + i) > EFUSE_MAX_SIZE) {
   res = 0;
   break;
  }
  res = efuse_one_byte_rw(adapter, bRead, start_addr + i,
     data + i);
  if (!bRead && !res)
   break;
 }
 if (!bRead)
  r8712_efuse_reg_uninit(adapter);
 return res;
}
