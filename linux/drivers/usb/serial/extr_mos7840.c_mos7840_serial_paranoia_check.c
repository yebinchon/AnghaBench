
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int type; } ;


 int pr_debug (char*,char const*) ;

__attribute__((used)) static int mos7840_serial_paranoia_check(struct usb_serial *serial,
      const char *function)
{
 if (!serial) {
  pr_debug("%s - serial == NULL\n", function);
  return -1;
 }
 if (!serial->type) {
  pr_debug("%s - serial->type == NULL!\n", function);
  return -1;
 }

 return 0;
}
