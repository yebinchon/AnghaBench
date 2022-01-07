
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_priv {int SwLed1; int SwLed0; int LedControlHandler; } ;
struct _adapter {struct led_priv ledpriv; } ;


 int InitLed871x (struct _adapter*,int *,int ) ;
 int LED_PIN_LED0 ;
 int LED_PIN_LED1 ;
 int LedControl871x ;

void r8712_InitSwLeds(struct _adapter *padapter)
{
 struct led_priv *pledpriv = &padapter->ledpriv;

 pledpriv->LedControlHandler = LedControl871x;
 InitLed871x(padapter, &pledpriv->SwLed0, LED_PIN_LED0);
 InitLed871x(padapter, &pledpriv->SwLed1, LED_PIN_LED1);
}
