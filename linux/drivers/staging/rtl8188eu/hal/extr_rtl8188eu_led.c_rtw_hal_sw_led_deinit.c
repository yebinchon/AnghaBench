
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_priv {int sw_led; } ;
struct adapter {struct led_priv ledpriv; } ;


 int DeInitLed871x (int *) ;

void rtw_hal_sw_led_deinit(struct adapter *padapter)
{
 struct led_priv *ledpriv = &padapter->ledpriv;

 DeInitLed871x(&ledpriv->sw_led);
}
