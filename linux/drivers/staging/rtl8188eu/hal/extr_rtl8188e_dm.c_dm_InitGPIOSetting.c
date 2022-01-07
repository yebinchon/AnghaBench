
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int GPIOSEL_ENBT ;
 int GPIOSEL_GPIO ;
 int REG_GPIO_MUXCFG ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void dm_InitGPIOSetting(struct adapter *Adapter)
{
 u8 tmp1byte;

 tmp1byte = usb_read8(Adapter, REG_GPIO_MUXCFG);
 tmp1byte &= (GPIOSEL_GPIO | ~GPIOSEL_ENBT);

 usb_write8(Adapter, REG_GPIO_MUXCFG, tmp1byte);
}
