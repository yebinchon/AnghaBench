
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct _adapter {scalar_t__ driver_stopped; scalar_t__ surprise_removed; } ;
struct LED_871x {int LedPin; int bLedOn; } ;


 int BIT (int) ;
 int LEDCFG ;



 int r8712_read8 (struct _adapter*,int ) ;
 int r8712_write8 (struct _adapter*,int ,int) ;

__attribute__((used)) static void SwLedOff(struct _adapter *padapter, struct LED_871x *pLed)
{
 u8 LedCfg;

 if (padapter->surprise_removed || padapter->driver_stopped)
  return;
 LedCfg = r8712_read8(padapter, LEDCFG);
 switch (pLed->LedPin) {
 case 130:
  break;
 case 129:
  LedCfg &= 0xf0;
  r8712_write8(padapter, LEDCFG, (LedCfg | BIT(3)));
  break;
 case 128:
  LedCfg &= 0x0f;
  r8712_write8(padapter, LEDCFG, (LedCfg | BIT(7)));
  break;
 default:
  break;
 }
 pLed->bLedOn = 0;
}
