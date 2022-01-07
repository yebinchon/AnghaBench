
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int f_midi ;
 int fi_midi ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int midi_unbind(struct usb_composite_dev *dev)
{
 usb_put_function(f_midi);
 usb_put_function_instance(fi_midi);
 return 0;
}
