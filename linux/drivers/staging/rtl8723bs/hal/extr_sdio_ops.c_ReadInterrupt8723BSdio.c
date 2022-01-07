
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int sdio_himr; } ;


 TYPE_1__* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ SDIO_REG_HISR ;
 int SdioLocalCmd52Read1Byte (struct adapter*,scalar_t__) ;

__attribute__((used)) static s32 ReadInterrupt8723BSdio(struct adapter *adapter, u32 *phisr)
{
 u32 hisr, himr;
 u8 val8, hisr_len;


 if (!phisr)
  return 0;

 himr = GET_HAL_DATA(adapter)->sdio_himr;


 hisr_len = 0;
 while (himr) {
  hisr_len++;
  himr >>= 8;
 }

 hisr = 0;
 while (hisr_len != 0) {
  hisr_len--;
  val8 = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_HISR + hisr_len);
  hisr |= (val8 << (8 * hisr_len));
 }

 *phisr = hisr;

 return 1;
}
