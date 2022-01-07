
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ POLLING_LLT_THRESHOLD ;
 int REG_LLT_INIT ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _FAIL ;
 int _LLT_INIT_ADDR (int) ;
 int _LLT_INIT_DATA (int) ;
 scalar_t__ _LLT_NO_ACTIVE ;
 int _LLT_OP (int ) ;
 scalar_t__ _LLT_OP_VALUE (int) ;
 int _LLT_WRITE_ACCESS ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _module_hal_init_c_ ;
 int udelay (int) ;
 int usb_read32 (struct adapter*,int ) ;
 int usb_write32 (struct adapter*,int ,int) ;

__attribute__((used)) static s32 _LLTWrite(struct adapter *padapter, u32 address, u32 data)
{
 s32 status = _SUCCESS;
 s32 count = 0;
 u32 value = _LLT_INIT_ADDR(address) | _LLT_INIT_DATA(data) | _LLT_OP(_LLT_WRITE_ACCESS);
 u16 LLTReg = REG_LLT_INIT;

 usb_write32(padapter, LLTReg, value);


 do {
  value = usb_read32(padapter, LLTReg);
  if (_LLT_NO_ACTIVE == _LLT_OP_VALUE(value))
   break;

  if (count > POLLING_LLT_THRESHOLD) {
   RT_TRACE(_module_hal_init_c_, _drv_err_, ("Failed to polling write LLT done at address %d!\n", address));
   status = _FAIL;
   break;
  }
  udelay(5);
 } while (count++);

 return status;
}
