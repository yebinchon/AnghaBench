
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int REG_HMEBOX_E0 ;
 int _FAIL ;
 int _SUCCESS ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int udelay (int) ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

s32 iol_execute(struct adapter *padapter, u8 control)
{
 s32 status = _FAIL;
 u8 reg_0x88 = 0;
 unsigned long start = 0;

 control = control&0x0f;
 reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0);
 usb_write8(padapter, REG_HMEBOX_E0, reg_0x88|control);

 start = jiffies;
 while ((reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0)) & control &&
        jiffies_to_msecs(jiffies - start) < 1000) {
  udelay(5);
 }

 reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0);
 status = (reg_0x88 & control) ? _FAIL : _SUCCESS;
 if (reg_0x88 & control<<4)
  status = _FAIL;
 return status;
}
