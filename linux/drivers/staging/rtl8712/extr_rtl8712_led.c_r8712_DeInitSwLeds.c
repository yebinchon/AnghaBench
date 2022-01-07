
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_priv {int SwLed1; int SwLed0; } ;
struct _adapter {struct led_priv ledpriv; } ;


 int DeInitLed871x (int *) ;

void r8712_DeInitSwLeds(struct _adapter *padapter)
{
 struct led_priv *ledpriv = &padapter->ledpriv;

 DeInitLed871x(&ledpriv->SwLed0);
 DeInitLed871x(&ledpriv->SwLed1);
}
