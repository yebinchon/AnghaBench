
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_configuration {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int f_midi ;
 int fi_midi ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;

__attribute__((used)) static int midi_bind_config(struct usb_configuration *c)
{
 int status;

 f_midi = usb_get_function(fi_midi);
 if (IS_ERR(f_midi))
  return PTR_ERR(f_midi);

 status = usb_add_function(c, f_midi);
 if (status < 0) {
  usb_put_function(f_midi);
  return status;
 }

 return 0;
}
