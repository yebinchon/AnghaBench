
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_priv {int sw_led; } ;
struct adapter {struct led_priv ledpriv; } ;


 int InitLed871x (struct adapter*,int *) ;

void rtw_hal_sw_led_init(struct adapter *padapter)
{
 struct led_priv *pledpriv = &padapter->ledpriv;

 InitLed871x(padapter, &pledpriv->sw_led);
}
