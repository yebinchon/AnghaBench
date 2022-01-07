
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* port; } ;
struct TYPE_4__ {scalar_t__ console; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int unregister_console (int *) ;
 int usbcons ;
 TYPE_3__ usbcons_info ;

void usb_serial_console_exit(void)
{
 if (usbcons_info.port) {
  unregister_console(&usbcons);
  usbcons_info.port->port.console = 0;
  usbcons_info.port = ((void*)0);
 }
}
