
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int wusb; } ;


 int wusbhc_reset_all (int ) ;

void wa_reset_all(struct wahc *wa)
{

 wusbhc_reset_all(wa->wusb);
}
