
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (unsigned char) ;

__attribute__((used)) static void usb_try_string_workarounds(unsigned char *buf, int *length)
{
 int newlength, oldlength = *length;

 for (newlength = 2; newlength + 1 < oldlength; newlength += 2)
  if (!isprint(buf[newlength]) || buf[newlength + 1])
   break;

 if (newlength > 2) {
  buf[0] = newlength;
  *length = newlength;
 }
}
