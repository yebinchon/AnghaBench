
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
struct LED_871x {struct adapter* padapter; } ;


 int SwLedBlink1 (struct LED_871x*) ;

void blink_handler(struct LED_871x *pLed)
{
 struct adapter *padapter = pLed->padapter;

 if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
  return;

 SwLedBlink1(pLed);
}
