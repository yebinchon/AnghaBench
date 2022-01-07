
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
struct LED_871x {int bLedOn; } ;


 int BIT (int) ;
 int REG_LEDCFG2 ;
 int REG_MAC_PINMUX_CFG ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

void sw_led_off(struct adapter *padapter, struct LED_871x *pLed)
{
 u8 led_cfg;

 if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
  goto exit;

 led_cfg = usb_read8(padapter, REG_LEDCFG2);


 led_cfg &= 0x90;
 usb_write8(padapter, REG_LEDCFG2, (led_cfg | BIT(3)));
 led_cfg = usb_read8(padapter, REG_MAC_PINMUX_CFG);
 led_cfg &= 0xFE;
 usb_write8(padapter, REG_MAC_PINMUX_CFG, led_cfg);
exit:
 pLed->bLedOn = 0;
}
