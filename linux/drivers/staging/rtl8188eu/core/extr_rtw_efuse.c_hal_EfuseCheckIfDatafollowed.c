
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct adapter {int dummy; } ;


 scalar_t__ efuse_OneByteRead (struct adapter*,scalar_t__,int*) ;

__attribute__((used)) static bool hal_EfuseCheckIfDatafollowed(struct adapter *pAdapter, u8 word_cnts, u16 startAddr)
{
 bool ret = 0;
 u8 i, efuse_data;

 for (i = 0; i < (word_cnts * 2); i++) {
  if (efuse_OneByteRead(pAdapter, (startAddr + i), &efuse_data) && (efuse_data != 0xFF))
   ret = 1;
 }
 return ret;
}
