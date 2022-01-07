
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;


 int ssu100_initdevice (int ) ;

__attribute__((used)) static int ssu100_attach(struct usb_serial *serial)
{
 return ssu100_initdevice(serial->dev);
}
