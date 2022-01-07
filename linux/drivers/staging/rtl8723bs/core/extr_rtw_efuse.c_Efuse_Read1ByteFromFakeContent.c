
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct adapter {int dummy; } ;


 size_t EFUSE_MAX_HW_SIZE ;
 int ** fakeBTEfuseContent ;
 int fakeEfuseBank ;
 int * fakeEfuseContent ;

bool
Efuse_Read1ByteFromFakeContent(
 struct adapter *padapter,
 u16 Offset,
 u8 *Value)
{
 if (Offset >= EFUSE_MAX_HW_SIZE) {
  return 0;
 }

 if (fakeEfuseBank == 0)
  *Value = fakeEfuseContent[Offset];
 else
  *Value = fakeBTEfuseContent[fakeEfuseBank-1][Offset];
 return 1;
}
