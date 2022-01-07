
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_priv {int LedStrategy; int bRegUseLed; } ;
struct _adapter {struct led_priv ledpriv; } ;
typedef enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;
 int SwLedControlMode1 (struct _adapter*,int) ;
 int SwLedControlMode2 (struct _adapter*,int) ;
 int SwLedControlMode3 (struct _adapter*,int) ;
 int SwLedControlMode4 (struct _adapter*,int) ;
 int SwLedControlMode5 (struct _adapter*,int) ;
 int SwLedControlMode6 (struct _adapter*,int) ;

void LedControl871x(struct _adapter *padapter, enum LED_CTL_MODE LedAction)
{
 struct led_priv *ledpriv = &padapter->ledpriv;

 if (!ledpriv->bRegUseLed)
  return;
 switch (ledpriv->LedStrategy) {
 case 134:
  break;
 case 133:
  SwLedControlMode1(padapter, LedAction);
  break;
 case 132:
  SwLedControlMode2(padapter, LedAction);
  break;
 case 131:
  SwLedControlMode3(padapter, LedAction);
  break;
 case 130:
  SwLedControlMode4(padapter, LedAction);
  break;
 case 129:
  SwLedControlMode5(padapter, LedAction);
  break;
 case 128:
  SwLedControlMode6(padapter, LedAction);
  break;
 default:
  break;
 }
}
