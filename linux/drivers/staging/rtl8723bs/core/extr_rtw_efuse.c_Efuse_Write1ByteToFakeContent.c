
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef size_t u16 ;
struct adapter {int dummy; } ;


 size_t EFUSE_MAX_HW_SIZE ;
 void*** fakeBTEfuseContent ;
 int fakeEfuseBank ;
 void** fakeEfuseContent ;

bool
Efuse_Write1ByteToFakeContent(
 struct adapter *padapter,
 u16 Offset,
 u8 Value)
{
 if (Offset >= EFUSE_MAX_HW_SIZE) {
  return 0;
 }
 if (fakeEfuseBank == 0)
  fakeEfuseContent[Offset] = Value;
 else {
  fakeBTEfuseContent[fakeEfuseBank-1][Offset] = Value;
 }
 return 1;
}
