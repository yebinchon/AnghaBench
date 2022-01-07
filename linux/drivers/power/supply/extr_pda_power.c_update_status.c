
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* is_usb_online ) () ;int (* is_ac_online ) () ;} ;


 int new_ac_status ;
 int new_usb_status ;
 TYPE_1__* pdata ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void update_status(void)
{
 if (pdata->is_ac_online)
  new_ac_status = !!pdata->is_ac_online();

 if (pdata->is_usb_online)
  new_usb_status = !!pdata->is_usb_online();
}
