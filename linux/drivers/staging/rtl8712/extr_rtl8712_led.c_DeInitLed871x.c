
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LED_871x {int bLedBlinkInProgress; int BlinkTimer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void DeInitLed871x(struct LED_871x *pLed)
{
 del_timer_sync(&pLed->BlinkTimer);



 pLed->bLedBlinkInProgress = 0;
}
